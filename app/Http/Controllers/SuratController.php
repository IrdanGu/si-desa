<?php

namespace App\Http\Controllers;

use App\Models\Surat;
use App\Models\Surat_KeteranganUsaha;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class SuratController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $status = $request->get('status');

        $surat_ktm =Surat::where('is_read', false)->count();
        $surat_ku = Surat_KeteranganUsaha::where('is_read', false)->count();

        $notifications_sktm = Surat::where('is_read', false)->get();
        $notifications_sku = Surat_KeteranganUsaha::where('is_read', false)->get();
        $notifications = $notifications_sktm->merge($notifications_sku);


        if ($status) {
            $surat = Surat::where('status', $status)->paginate(15);
        } else {
            $surat = Surat::orderBy('id', 'desc')->paginate(20);
        }

        $cari = $request->get('keyword');
        if ($cari) {
            if ($status) {
                $suratusaha = Surat::where('nik', 'LIKE', "%$cari%")->where('status', $status)->paginate(15);
            } else {
                $suratusaha = Surat::where('nik', 'LIKE', "%$cari%")->paginate(15);
            }

        }
        return view('surat.index', compact('surat', 'surat_ktm', 'surat_ku', 'notifications'));
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $surat_ktm =Surat::where('is_read', false)->count();
        $surat_ku = Surat_KeteranganUsaha::where('is_read', false)->count();

        $notifications_sktm = Surat::where('is_read', false)->get();
        $notifications_sku = Surat_KeteranganUsaha::where('is_read', false)->get();
        $notifications = $notifications_sktm->merge($notifications_sku);
        return view('surat.create',compact('surat_ktm', 'surat_ku', 'notifications'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'nik' => 'required|min:16|max:16',
            'pilihsurat' => 'required|in:Surat Keterangan Tidak Mampu,Surat Keterangan Usaha',
            'no_hp' => 'required',
            'read' => 'in:false,Surat Keterangan Usaha',
            'permohonan' => 'required',
            'foto_ktp' => 'required_if:pilihsurat,==,Surat Keterangan Tidak Mampu|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'foto_kk' => 'required_if:pilihsurat,==,Surat Keterangan Tidak Mampu|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'fotoktp' => 'required_if:pilihsurat,==,Surat Keterangan Usaha|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'fotokk' => 'required_if:pilihsurat,==,Surat Keterangan Usaha|image|mimes:jpeg,png,jpg,gif,svg|max:2048',


        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $surat = $request->get('pilihsurat');
        if ($request->get('pilihsurat') === "Surat Keterangan Tidak Mampu") {
            $surat = new Surat();
            $surat->nik = $request->get('nik');
                $surat->no_kk = $request->get('no_kk');
                 $surat->nama = $request->get('nama');

                if ($request->hasFile('foto_ktp')) {
                    $file = $request->file('foto_ktp')->store('dokumen', 'public');
                    $surat->foto_ktp = $file;
                }

                if ($request->hasFile('foto_kk')) {
                    $file = $request->file('foto_kk')->store('dokumen', 'public');
                    $surat->foto_kk = $file;
                }
                $surat->pilihsurat= $request->get('pilihsurat');
                $surat->permohonan = $request->get('permohonan');
            $surat->no_hp = $request->get('no_hp');
            $surat->status = 'Cancel';
            $surat->user_id = Auth::user()->id;
            $surat->is_read = false;
            $surat->save();

        //     // Kirim notifikasi ke admin
        // $admin = Navbar::first(); // Anda bisa mengganti ini dengan logika pemilihan admin yang sesuai
        // $admin->notify(new SuratCreated($surat));
            return redirect()->route('suratindex');

        } elseif ($request->get('pilihsurat') === "Surat Keterangan Usaha") {
            $surat = new Surat_KeteranganUsaha();
            $surat->nik = $request->get('nik');
            $surat->no_kk = $request->get('no_kk');
             $surat->nama = $request->get('nama');

            if ($request->hasFile('fotoktp')) {
                $file = $request->file('fotoktp')->store('dokumen', 'public');
                $surat->fotoktp = $file;
            }

            if ($request->hasFile('fotokk')) {
                $file = $request->file('fotokk')->store('dokumen', 'public');
                $surat->fotokk = $file;
            }
            $surat->pilihsurat= $request->get('pilihsurat');

            $surat->permohonan = $request->get('permohonan');
            $surat->no_hp = $request->get('no_hp');
            $surat->status = 'Cancel';
            $surat->user_id = Auth::user()->id;
            $surat->is_read = false;
            $surat->save();
            return redirect()->route('suratindex');
        }
    }




    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $surat = Surat::FindOrFail($id);
        return view('surat.edit', compact('surat'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Validasi data input
         $validator = Validator::make($request->all(), [
        'nik' => 'required|min:16|max:16',
        'pilihsurat' => 'required|in:Surat Keterangan Tidak Mampu,Surat Keterangan Usaha',
        'no_hp' => 'required'
      ]);

      // Periksa apakah validasi gagal
      if ($validator->fails()) {
        return redirect()->back()->withErrors($validator)->withInput();
    }

    // Cari surat berdasarkan ID
    $surat = Surat::findOrFail($id);




    // Update data surat
    $surat->pilihsurat = $request->get('pilihsurat');
    $surat->no_hp = $request->get('no_hp');
    $surat->user_id = Auth::user()->id;

    $surat->save();

    return redirect()->route('suratindex');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $surat = Surat::FindOrFail($id);
        $surat->delete();
        return redirect()->route('suratindex');
    }
}
