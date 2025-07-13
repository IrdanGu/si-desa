<?php

namespace App\Http\Controllers;

use App\Models\Agenda;
use App\Models\Surat;
use App\Models\Surat_KeteranganUsaha;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AgendaController extends Controller
{

    public function index(Request $request)
    {
        $surat_ktm =Surat::where('is_read', false)->count();
        $surat_ku = Surat_KeteranganUsaha::where('is_read', false)->count();

        $notifications_sktm = Surat::where('is_read', false)->get();
        $notifications_sku = Surat_KeteranganUsaha::where('is_read', false)->get();
        $notifications = $notifications_sktm->merge($notifications_sku);
    $agenda = Agenda::orderBy('created_at', 'desc')->paginate(7);
    $cari = $request->get('keyword');
    if ($cari) {
        $agenda = Agenda::where('judul', 'LIKE', "%$cari%")->paginate(7);
    }
    return view('agenda.index', compact('agenda','surat_ktm', 'surat_ku', 'notifications'));

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
        return view('agenda.create', compact('surat_ktm', 'surat_ku', 'notifications'));

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $judul = $request->get('judul');
        $agenda = new Agenda;
        $agenda->judul = $judul;
        $agenda->tanggal = date('Y-m-d', strtotime($request->get('tanggal')));
        $agenda->jam = $request->get('jam');
        $agenda->acara = $request->get('acara');
        $agenda->tempat = $request->get('tempat');
        $agenda->content = ($request->get('content'));
        $agenda->user_id = Auth::user()->id;


        $agenda->save();
        return redirect()->route('agendaindex');
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
        $agenda = Agenda::where('judul', $judul)->first();
        return view('agenda.edit', compact('agenda','surat_ktm', 'surat_ku', 'notifications'));

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $judul)
    {
        $judul = $request->get('judul');
        $agenda = Agenda::where('judul', $judul)->first();
        $agenda->judul = $judul;
        $agenda->tanggal = date('Y-m-d', strtotime($request->get('tanggal')));
        $agenda->jam = $request->get('jam');
        $agenda->acara = $request->get('acara');
        $agenda->tempat = $request->get('tempat');
        $agenda->content = ($request->get('content'));

        $agenda->save();
        return redirect()->route('agendaindex');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($judul)
    {
        $agenda = Agenda::where('judul', $judul)->first();
        $agenda->delete();
        return redirect()->route('agendaindex');
    }
}
