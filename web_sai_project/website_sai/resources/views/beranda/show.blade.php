<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Informasi {{$beranda->judul_info}}</title>
    <style>
        li{
            list-style: none;
        }
        pre {
            white-space: pre-wrap;
            word-wrap: break-word;
            text-align: justify;
        }
        .extra{
            background-color: #dd4b39;
            border-color: #d73925;
            color: #fff;
            border-style: none;
        }
        button.extra:hover{
            background-color: #d73925;
            border-color: #d73925;
            color: #fff;
        }
    </style>
</head>
<body>
   

    @extends('admin_layout.app')
    @section('header')
    @include('admin_layout.header')
    @endsection
    @section('leftbar')
    @include('admin_layout.leftbar')
    @endsection
    @section('rightbar')
    @include('admin_layout.rightbar')
    @endsection
    @section('content')
    <div class="content-wrapper">
        <section class="content-header"> 
            <div class="py-4 align-items-center">
                <h1 class="h2 mr-auto">Informasi {{$beranda->judul_info}}</h1>
                
                    <a href="{{ route('beranda.edit',['beranda' => $beranda->id]) }}" class="btn btn-primary">
                        Edit
                    </a>
                    &nbsp
                    <a href="{{ route('beranda.index')}}" class="btn btn-primary">
                        Kembali
                    </a>
                    &nbsp
                    <form action="{{ route('beranda.destroy',['beranda'=>$beranda->id]) }}" method="POST" class="btn btn-danger ml-3">
                        @method('DELETE')
                        @csrf
                        <button type="submit" class="extra"><span>Hapus</span></button>
                    </form>
            </div>
            <hr>
            @if(session()->has('pesan'))
                <div class="alert alert-success">
                    {{ session()->get('pesan') }}
                </div>
            @endif          
        </section>
        <section class="content">
            <ul>
                <li><center>{{$beranda->judul_info}}</center></li>
                <li><center><img width="50%" height="50%" src="{{ url('') }}/{{$beranda->image}}" alt=""></center></li>
                <li>Publisher : {{$beranda->publisher}} </li>
                <li>Keterangan :<pre>{{$beranda->keterangan}}</pre></li>
                <li>Tanggal : {{$beranda->day}}</li>
                <li>Tipe: {{$beranda->jenis}}</li>
            </ul>
        </section> 
<!-- /.content -->
</div>
@endsection

</body>
</html>