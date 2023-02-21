<?php

namespace App\Http\Controllers;

use App\Check;
use Illuminate\Http\Request;

class CheckController extends Controller
{   
    /*
    public function create()
    {
        return view('check.create');
    }
    public function store(Request $request){
        $validateData = $request->validate([
            'document_page' => 'required',
            'download_page' => 'required',
        ]);
        $info = new Check();
        $info->document_page= $validateData['document_page'];
        $info->download_page= $validateData['download_page'];   
        $info->save();
        $request->session()->flash('pesan','Penambahan status berhasil');
        return redirect()->route('check.index');
    }
    */
    public function index()
    {
        $info = Check::all();
        return view('check.index',['checks' => $info]);
    }
    public function edit($check_id)
    {
        $result = Check::findOrFail($check_id);
        return view('check.edit',['check' => $result]);
    }
    public function update(Request $request, Check $check){
        $validateData = $request->validate([
            'document_page' => 'required',
            'download_page' => 'required',
        ]);
        $check->document_page= $validateData['document_page'];
        $check->download_page= $validateData['download_page'];   
        $check->save();
        $request->session()->flash('pesan','Perubahan Status berhasil');
        return redirect()->route('check.index');
    }
}
