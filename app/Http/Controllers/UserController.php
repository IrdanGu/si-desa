<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\Models\Surat;
use App\Models\Surat_KeteranganUsaha;
use App\Models\User;
use Illuminate\Http\Request;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $surat_ktm =Surat::where('is_read', false)->count();
        $surat_ku = Surat_KeteranganUsaha::where('is_read', false)->count();

         $notifications_sktm = Surat::where('is_read', false)->get();
         $notifications_sku = Surat_KeteranganUsaha::where('is_read', false)->get();
         $notifications = $notifications_sktm->merge($notifications_sku);
        $user = User::all();

        return view('user.index', compact('user', 'surat_ktm', 'surat_ku', 'notifications'));
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
        return view('user.create',compact('surat_ktm', 'surat_ku', 'notifications'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(UserRequest $request)
    {

        $user =  new User;
        $user->name = $request->get('name');
        $user->email = $request->get('email');
        $user->password = bcrypt($request->get('password'));
        $user->level = $request->get('level');
        $user->save();
        return redirect()->route('userindex');
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
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
