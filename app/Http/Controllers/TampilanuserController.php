<?php

namespace App\Http\Controllers;

use App\Events\SuratCreated;
use Illuminate\Support\Facades\Auth;
use App\Models\Agenda;
use App\Models\Agenda_karangtaruna;
use App\Models\AparaturDesa;
use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Galery;
use App\Models\Penduduk;
use App\Models\Potensi_desa;
use App\Models\Surat;
use App\Models\Surat_KeteranganUsaha;
use Illuminate\Support\Facades\Validator;

class TampilanuserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $P = Penduduk::where('jenis_kelamin', 'P')->count();
        $LK = Penduduk::where('jenis_kelamin', 'LK')->count();
        $Kpl = Penduduk::where('hubungan', 'Kpl. Keluarga')->count();
        $jumlahkk = Penduduk::count();
        $jmlpenduduk = Penduduk::count();
        $berita = Berita::orderBy('created_at', 'desc')->paginate(3);
        $agenda = Agenda::orderBy('created_at', 'desc')->paginate(3);
        $agenda_karangtaruna = Agenda_karangtaruna::orderBy('created_at', 'desc')->paginate(3);
        return view('frontend.index', compact('berita','agenda','agenda_karangtaruna','jumlahkk', 'P', 'LK', 'Kpl','jmlpenduduk'));
    }



    // user berita
    public function detail_berita($slug)
    {
        $berita = Berita::where('slug', $slug)->first();
        return view('frontend.detail_berita', compact('berita'));
    }

    public function main_berita()
    {
        $berita = Berita::latest()->get();
        $galery = Galery::latest()->get();
        return view('frontend.main_berita', compact('berita','galery'));
    }


    // user aparatur
    public function aparatur()
    {
        $aparatur_desas = AparaturDesa::all();
        return view('frontend.aparatur', compact('aparatur_desas'));
    }

    // user aparatur
    public function infografis()
    {
        $infografis = Penduduk::all();

        $rt01 = Penduduk::where('rt', '01')->count();
        $rt02 = Penduduk::where('rt', '02')->count();
        $rt03 = Penduduk::where('rt', '03')->count();
        $rt04 = Penduduk::where('rt', '02')->count();
        $rt05 = Penduduk::where('rt', '05')->count();
        $rt06 = Penduduk::where('rt', '06')->count();
        $rt07 = Penduduk::where('rt', '07')->count();



         // Menghitung jumlah penduduk laki-laki dan perempuan di RT '01'
         $rt01LK = Penduduk::where('rt','01')->where('jenis_kelamin', 'LK')->count();
         $rt01P = Penduduk::where('rt','01')->where('jenis_kelamin', 'P')->count();

         // Menghitung jumlah penduduk laki-laki dan perempuan di RT '01'
         $rt02LK = Penduduk::where('rt','02')->where('jenis_kelamin', 'LK')->count();
         $rt02P = Penduduk::where('rt','02')->where('jenis_kelamin', 'P')->count();

         // Menghitung jumlah penduduk laki-laki dan perempuan di RT '01'
         $rt03LK = Penduduk::where('rt','03')->where('jenis_kelamin', 'LK')->count();
         $rt03P = Penduduk::where('rt','03')->where('jenis_kelamin', 'P')->count();

         // Menghitung jumlah penduduk laki-laki dan perempuan di RT '01'
         $rt04LK = Penduduk::where('rt','04')->where('jenis_kelamin', 'LK')->count();
         $rt04P = Penduduk::where('rt','04')->where('jenis_kelamin', 'P')->count();

         // Menghitung jumlah penduduk laki-laki dan perempuan di RT '01'
         $rt05LK = Penduduk::where('rt','05')->where('jenis_kelamin', 'LK')->count();
         $rt05P = Penduduk::where('rt','05')->where('jenis_kelamin', 'P')->count();

         // Menghitung jumlah penduduk laki-laki dan perempuan di RT '01'
         $rt06LK = Penduduk::where('rt','06')->where('jenis_kelamin', 'LK')->count();
         $rt06P = Penduduk::where('rt','06')->where('jenis_kelamin', 'P')->count();

          // Menghitung jumlah penduduk laki-laki dan perempuan di RT '01'
          $rt07LK = Penduduk::where('rt','07')->where('jenis_kelamin', 'LK')->count();
          $rt07P = Penduduk::where('rt','07')->where('jenis_kelamin', 'P')->count();




         // Menghitung pendidikan didesa mancagar
         $blm_sklh = Penduduk::where('pendidikan', 'Blm Sekolah')->count();
         $tdk_prnh_sklh = Penduduk::where('pendidikan', 'Tdk Prnh Sklh')->count();
         $blm_tamat_sd = Penduduk::where('pendidikan', 'Blm Tamat SD')->count();
         $tamat_sd = Penduduk::where('pendidikan', 'Tamat SD')->count();
         $tamat_sltp = Penduduk::where('pendidikan', 'Tamat SLTP')->count();
         $tamat_slta = Penduduk::where('pendidikan', 'Tamat SLTA')->count();
         $tamat_s1 = Penduduk::where('pendidikan', 'Tamat S-1')->count();

         // Menghitung status pekerjaan didesa mancagar
         $brh_h_lepas = Penduduk::where('pekerjaan','Buruh Harian Lepas')->count();
         $pelajar = Penduduk::where('pekerjaan','pelajar')->count();
         $wiraswasta = Penduduk::where('pekerjaan','Wiraswasta')->count();
         $m_rmh_tangga = Penduduk::where('pekerjaan','Mengrs Rmh Tangga')->count();
         $b_harian_lepas = Penduduk::where('pekerjaan','Buruh Harian Lepas')->count();
         $perangkat_desa = Penduduk::where('pekerjaan','Perangkat Desa')->count();
         $belum_bekerja = Penduduk::where('pekerjaan','Belum Bekerja')->count();
         $karyawan_swasta = Penduduk::where('pekerjaan','Karyawan Swasta')->count();

         // Menghitung status penduduk
         $kawin = Penduduk::where('status', 'Kawin')->count();
         $blm_kawin = Penduduk::where('status', 'Blm Kawin')->count();
         $jandud = Penduduk::where('status', 'Janda/Duda')->count();


        return view('frontend.infografis', compact('infografis','rt01', 'rt02','rt03',
                                         'rt04','rt05','rt06','rt07', 'rt01LK', 'rt01P','rt02LK','rt02P','rt03LK','rt03P','rt04LK','rt04P','rt05LK','rt05P','rt06LK','rt06P','rt07LK','rt07P', 'blm_sklh', 'tdk_prnh_sklh', 'blm_tamat_sd'
                                        ,'tamat_sd', 'tamat_sltp', 'tamat_slta', 'tamat_s1','brh_h_lepas','pelajar','wiraswasta','m_rmh_tangga','b_harian_lepas','perangkat_desa','belum_bekerja','karyawan_swasta','kawin','blm_kawin','jandud'));
    }


    // user agenda
    public function main_agenda()
    {
        $agenda = Agenda::latest()->get();
        $galery = Galery::latest()->get();
        return view('frontend.main_agenda', compact('agenda', 'galery'));
    }

    public function detail_agenda($judul)
    {
        $agenda = Agenda::where('judul', $judul)->first();
        return view('frontend.detail_agenda', compact('agenda'));
    }


    // user agenda karangtaruna
    public function main_agenda_karangtaruna()
    {
        $agenda_karangtaruna = Agenda_karangtaruna::latest()->get();
        $galery = Galery::latest()->get();
        return view('frontend.main_agenda_karangtaruna', compact('agenda_karangtaruna','galery'));
    }

    public function detail_agenda_karangtaruna($judul)
    {
        $agenda_karangtaruna = Agenda_karangtaruna::where('judul', $judul)->first();
        return view('frontend.detail_agenda_karangtaruna', compact('agenda_karangtaruna'));
    }

    public function main_galery()
    {
        $galery = Galery::latest()->get();
        return view('frontend.main_galery', compact('galery'));
    }


   // untuk potensi desa
   public function potensi_desa()
    {
        $potensi_desa = Potensi_desa::all();
        return view('frontend.potensidesa', compact('potensi_desa'));
    }

    // untuk surat keterangan kurang mampu

    public function surat()
    {
        return view('frontend.buat_surat');
    }

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
            return redirect()->route('surat')->with('status', 'Surat SKTM Berhasil Di Buat. pantau whatapp');

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
            return redirect()->route('surat')->with('status', 'Surat SKU Berhasil Di Buat. pantau whatapp');
        }
    }




    public function update(Request $request, $id)
    {


     $surat = Surat::FindOrFail($id);
    $surat->status = 'Approve';

    // Kurangi jumlah notifikasi
    $surat->is_read = true;
    $surat->save();
    $surat->save();
    return redirect()->route('suratindex')->with('success', 'Surat Keterangan Tidak Mampu berhasil diapprove');

        }




    public function updateSKU(Request $request, $id)
    {
        $surat = Surat_KeteranganUsaha::FindOrFail($id);
        $surat->status = 'Approve';

         // Kurangi jumlah notifikasi
         $surat->is_read = true;
         $surat->save();
        $surat->save();
        return redirect()->route('surat_keteranganusahaindex');
    }



    // public function surat_keteranganusaha()
    // {
    //     return view('frontend.buat_surat');
    // }

    // public function storeSKU(Request $request)
    // {

    //     $validator = Validator::make($request->all(), [
    //         'nik' => 'required|min:16|max:16',
    //         'pilihsurat' => 'required|in:Surat Keterangan Tidak Mampu,Surat Keterangan Usaha',
    //         'no_hp' => 'required'

    //     ]);

    //     if ($validator->fails()) {
    //         return redirect()->back()->withErrors($validator)->withInput();
    //     }
    //     $surat_keteranganusaha = new Surat;
    //     $surat_keteranganusaha->nik = $request->get('nik');
    //     $surat_keteranganusaha->no_kk = $request->get('no_kk');
    //     $surat_keteranganusaha->nama = $request->get('nama');
    //     $surat_keteranganusaha->pilihsurat = $request->get('pilihsurat');

    //     // Simpan foto KTP dan KK jika diperlukan
    //     if ($surat_keteranganusaha->pilihsurat == "Surat Keterangan Tidak Mampu") {
    //         if ($request->hasFile('fotoktp')) {
    //             $file = $request->file('fotoktp')->store('gambar', 'public');
    //             $surat_keteranganusaha->fotoktp = $file;
    //         }

    //         if ($request->hasFile('foto_kk')) {
    //             $file = $request->file('foto_kk')->store('gambar', 'public');
    //             $surat_keteranganusaha->foto_kk = $file;
    //         }
    //     }


    //     $surat_keteranganusaha->no_hp = $request->get('no_hp');
    //     $surat_keteranganusaha->status = 'Cancel';
    //     $surat_keteranganusaha->user_id = Auth::user()->id;
    //     $surat_keteranganusaha->save();
    //     return redirect()->route('surat_keteranganusaha')->with('status', 'Surat Berhasil Di Buat. Ambil surat Anda Di Kantor Desa');
    // }








    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    // public function store(Request $request)
    // {
    //     //
    // }

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
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    // public function update(Request $request, string $id)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
