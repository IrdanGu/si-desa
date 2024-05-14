<?php

namespace App\Http\Controllers;

use App\Models\aparaturdesa;
use App\Models\strukturdesa;
use Illuminate\Http\Request;

class StrukturDesaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {


            $dataaparatur = aparaturdesa::all();
            return view('frontend.aparatur', compact('dataaparatur'));
    }

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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show( $strukturdesa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(strukturdesa $strukturdesa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, strukturdesa $strukturdesa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(strukturdesa $strukturdesa)
    {
        //
    }
}
