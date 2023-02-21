<?php

namespace App\Http\Controllers;

use App\Beranda;
use App\Document;
use App\Check;
use Illuminate\Http\Request;
use File;

class BerandaController extends Controller
{
    public function data(Request $request)
    {
        $cari = $request->cari;
        
        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result = Beranda::select('id','judul_info', 'image', 'day')
        ->where('jenis', '=', 'Artikel')
        ->get()
        ->take(2);
        $result2 = Beranda::select('id','judul_info', 'image', 'day')
        ->where('jenis', '=', 'Berita')
        ->get()
        ->take(2);
        $result3 = Beranda::select('id','judul_info', 'image', 'day')
        ->where('jenis', '=', 'Recruitment')
        ->get()
        ->take(2);
        $result4 = Beranda::select('id','judul_info', 'image','keterangan', 'day')
        ->get()
        ->take(4);
        return view('beranda.home',['switch'=>$check,'artikel' => $result,'berita'=>$result2,'rekuit'=>$result3,'slide'=>$result4,'word'=>$cari]);
    }
    public function artikel(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result =  Beranda::where('jenis', '=', 'Artikel')
        ->paginate(3);
        return view('beranda.artikel',['switch'=>$check,'artikel' => $result,'word'=>$cari]);
    }
    public function berita(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result2 =  Beranda::where('jenis', '=', 'Berita')
        ->paginate(3);
        return view('beranda.berita',['switch'=>$check,'berita'=>$result2,'word'=>$cari]);
    }
    public function rekuit(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result3 =  Beranda::where('jenis', '=', 'Recruitment')
        ->paginate(3);
        return view('beranda.rekuit',['switch'=>$check,'rekuit'=>$result3,'word'=>$cari]);
    }
    public function info($beranda_id,Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result = Beranda::findOrFail($beranda_id);
        return view('beranda.info',['info' => $result, 'switch'=>$check]);
    }
    public function search(Request $request)
	{
		$cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();
 
		$word = Beranda::where('keterangan','LIKE',"%".$cari."%")
        ->paginate(3);
		return view('beranda.search',['switch'=>$check,'cari' => $word,'word'=>$cari]);
 
	}
    public function ittp(){
        return redirect()->away('https://ittelkom-pwt.ac.id');
    }
    public function cdc(){
        return redirect()->away('https://cdc.ittelkom-pwt.ac.id');
    }
    public function spm(){
        return redirect()->away('https://spm.ittelkom-pwt.ac.id');
    }
    public function kemahasiswaan(){
        return redirect()->away('https://kemahasiswaan.ittelkom-pwt.ac.id');
    }
    public function kerjasama(){
        return redirect()->away('https://kerjasama.ittelkom-pwt.ac.id');
    }
    public function pmb(){
        return redirect()->away('https://pmb.ittelkom-pwt.ac.id');
    }
    public function sekpim(){
        return redirect()->away('https://sekpim.ittelkom-pwt.ac.id');
    }
    public function keu(){
        return redirect()->away('https://keu.ittelkom-pwt.ac.id');
    }
    public function sdm(){
        return redirect()->away('https://sdm.ittelkom-pwt.ac.id');
    }
    public function log(){
        return redirect()->away('https://log.ittelkom-pwt.ac.id');
    }
    public function akademik(){
        return redirect()->away('https://akademik.ittelkom-pwt.ac.id');
    }
    public function konsul(){
        return redirect()->away('https://konsul.ittelkom-pwt.ac.id');
    }



    public function document(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result =  Document::where('tipe_file', '=', 'Document')
        ->get();
        return view('document.documentmutu',['switch'=>$check,'document' => $result,'word'=>$cari]);
    }
    public function download(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result =  Document::where('tipe_file', '=', 'Download')
        ->get();
        return view('document.download',['switch'=>$check,'download' => $result,'word'=>$cari]);
    }
}
