<?php

namespace App\Http\Controllers;

use App\Models\Agenda_karangtaruna;
use App\Models\Surat;
use App\Models\Surat_KeteranganUsaha;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AgendaKarangtarunaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
    $surat_ktm =Surat::where('is_read', false)->count();
    $surat_ku = Surat_KeteranganUsaha::where('is_read', false)->count();

    $notifications_sktm = Surat::where('is_read', false)->get();
    $notifications_sku = Surat_KeteranganUsaha::where('is_read', false)->get();
    $notifications = $notifications_sktm->merge($notifications_sku);
    $agenda_karangtaruna = Agenda_karangtaruna::orderBy('created_at', 'desc')->paginate(7);
    $cari = $request->get('keyword');
    if ($cari) {
        $agenda_karangtaruna = Agenda_karangtaruna::where('judul', 'LIKE', "%$cari%")->paginate(7);
    }
    return view('agenda_karangtaruna.index', compact('agenda_karangtaruna', 'surat_ktm', 'surat_ku', 'notifications'));
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
        return view('agenda_karangtaruna.create',compact('surat_ktm', 'surat_ku', 'notifications'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $judul = $request->get('judul');
        $agenda_karangtaruna = new Agenda_karangtaruna();
        $agenda_karangtaruna->judul = $judul;
        $agenda_karangtaruna->tanggal = date('Y-m-d', strtotime($request->get('tanggal')));
        $agenda_karangtaruna->jam = $request->get('jam');
        $agenda_karangtaruna->acara = $request->get('acara');
        $agenda_karangtaruna->tempat = $request->get('tempat');
        $agenda_karangtaruna->content = ($request->get('content'));
        $agenda_karangtaruna->user_id = Auth::user()->id;


        $agenda_karangtaruna->save();
        return redirect()->route('agenda_karangtarunaindex');
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
    public function edit($judul)
    {
        $surat_ktm =Surat::where('is_read', false)->count();
        $surat_ku = Surat_KeteranganUsaha::where('is_read', false)->count();

        $notifications_sktm = Surat::where('is_read', false)->get();
        $notifications_sku = Surat_KeteranganUsaha::where('is_read', false)->get();
        $notifications = $notifications_sktm->merge($notifications_sku);
        $agenda_karangtaruna = Agenda_karangtaruna::where('judul', $judul)->first();
        return view('agenda_karangtaruna.edit', compact('agenda_karangtaruna','surat_ktm', 'surat_ku', 'notifications'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $judul)
    {

        $judul = $request->get('judul');
        $agenda_karangtaruna = Agenda_karangtaruna::where('judul', $judul)->first();
        $agenda_karangtaruna->judul = $judul;
        $agenda_karangtaruna->tanggal = date('Y-m-d', strtotime($request->get('tanggal')));
        $agenda_karangtaruna->jam = $request->get('jam');
        $agenda_karangtaruna->acara = $request->get('acara');
        $agenda_karangtaruna->tempat = $request->get('tempat');
        $agenda_karangtaruna->content = ($request->get('content'));

        $agenda_karangtaruna->save();
        return redirect()->route('agenda_karangtarunaindex');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($judul)
    {
        $agenda_karangtaruna = Agenda_karangtaruna::where('judul', $judul)->first();
        $agenda_karangtaruna->delete();
        return redirect()->route('agenda_karangtarunaindex');
    }
}
