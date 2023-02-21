<?php

namespace App\Http\Controllers;

use App\Beranda;
use Illuminate\Http\Request;
use File;

class AdminLTEBerandaController extends Controller
{
    public function create(){
        return view('beranda.create');
    }

    public function store(Request $request){
        $validateData = $request->validate([
            'judul_info' => 'required',
            'publisher' => 'required|min:3|max:50',
            'keterangan' => '',
            'tanggal'=> '',
            'jenis' => 'required',
            'image' => 'required|file|image|max:10000',
        ]);
        $info = new Beranda();
        $info->judul_info= $validateData['judul_info'];
        $info->publisher= $validateData['publisher'];
        $info->keterangan= $validateData['keterangan'];
        $info->day= $validateData['tanggal'];
        $info->jenis= $validateData['jenis'];   
        if($request->hasFile('image'))
        {
            $extFile = $request->image->getClientOriginalExtension();
            $namaFile = 'user-'.time().".".$extFile;
            $path = $request->image->move('assets/images',$namaFile);
            $info->image = $path;
        }
        $info->save();
        $request->session()->flash('pesan','Penambahan data berhasil');
        return redirect()->route('beranda.index');
    }

    public function index()
    {
        $info = Beranda::all();
        return view('beranda.index',['berandas' => $info]);
    }

    public function show($beranda_id)
    {
        $result = Beranda::findOrFail($beranda_id);
        return view('beranda.show',['beranda' => $result]);
    }

    public function edit($beranda_id)
    {
        $result = Beranda::findOrFail($beranda_id);
        return view('beranda.edit',['beranda' => $result]);
    }

    public function update(Request $request, Beranda $beranda)
    {
        $validateData = $request->validate([
            'judul_info' => 'required',
            'publisher' => 'required|min:3|max:50',
            'keterangan' => '',
            'tanggal'=> 'required',
            'jenis' => 'required',
            'image' => 'file|image|max:1000',
        ]);
        $beranda->judul_info= $validateData['judul_info'];
        $beranda->publisher= $validateData['publisher'];
        $beranda->keterangan= $validateData['keterangan'];
        $beranda->day= $validateData['tanggal'];
        $beranda->jenis= $validateData['jenis'];   
        if($request->hasFile('image'))
        {
            $extFile = $request->image->getClientOriginalExtension();
            $namaFile = 'user-'.time().".".$extFile;
            File::delete($beranda->image);
            $path = $request->image->move('assets/images',$namaFile);
            $beranda->image = $path;
        }
        $beranda->save();
        $request->session()->flash('pesan','Perubahan info berhasil');
        return redirect()->route('beranda.show',['beranda' => $beranda->id]);
    }

    public function destroy(Request $request, Beranda $beranda)
    {
        File::delete($beranda->image);
        $beranda->delete();
        $request->session()->flash('pesan','Hapus info berhasil');
        return redirect()->route('beranda.index');
    }
}
