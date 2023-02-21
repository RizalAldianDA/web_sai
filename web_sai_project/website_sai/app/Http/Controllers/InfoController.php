<?php

namespace App\Http\Controllers;

use App\Info;
use App\Check;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function sai(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result =  Info::where('info_tipe', '=', 'sai')
        ->paginate(1);
        return view('tentangkami.sai',['switch'=>$check,'sai' => $result,'word'=>$cari]);
    }
    public function vdm(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result2 =  Info::where('info_tipe', '=', 'vdm')
        ->paginate(1);
        return view('tentangkami.vdm',['switch'=>$check,'vdm'=>$result2,'word'=>$cari]);
    }
    public function kdt(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result3 =  Info::where('info_tipe', '=', 'kdt')
        ->paginate(1);
        return view('tentangkami.kdt',['switch'=>$check,'kdt'=>$result3,'word'=>$cari]);
    }
    public function kdtj(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result3 =  Info::where('info_tipe', '=', 'kdtj')
        ->paginate(1);
        return view('aktivitas.kdtj',['switch'=>$check,'kdtj'=>$result3,'word'=>$cari]);
    }
    public function tdf(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result3 =  Info::where('info_tipe', '=', 'tdf')
        ->paginate(1);
        return view('aktivitas.tdf',['switch'=>$check,'tdf'=>$result3,'word'=>$cari]);
    }
    public function kedh(Request $request)
    {
        $cari = $request->cari;

        $check =  Check::where('name', '=', 'Primary')
        ->get();

        $result3 =  Info::where('info_tipe', '=', 'kedh')
        ->paginate(1);
        return view('aktivitas.kedh',['switch'=>$check,'kedh'=>$result3,'word'=>$cari]);
    }
}
