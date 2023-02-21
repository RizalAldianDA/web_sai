<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
        <title>Data Info</title>
        <style>
           .sticky {
                max-width: 200px;
                display: inline-block;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
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
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <h1>
            <div class="py-4 align-items-center">
                <h2 class="mr-auto d-flex justify-content-start">Tabel Info</h2>
                <a href="{{ route('beranda.create') }}" class="btn btn-primary">
                    Tambah info
                </a>
            </div>
        </h1>
        </section>
        <!-- Main content -->
        <section class="content">
                <div class="row">
                    <div class="col-12">
                        @if(session()->has('pesan'))
                            <div class="alert alert-success">
                                {{ session()->get('pesan') }}
                            </div>
                        @endif
    
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Image</th>
                                    <th>Judul</th>
                                    <th>Publisher</th>
                                    <th>Keterangan</th>
                                    <th>Day</th>
                                    <th>Tipe</th>
    
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($berandas as $info)
                                    <tr>
                                        <th>{{$loop->iteration}}</th>
                                        <td><img height="30px" src="{{ url('') }}/{{$info->image}}" class="rounded" alt=""></td>
                                        <td><a href="{{ route('beranda.show',['beranda' => $info->id]) }}">{{$info->judul_info}}</a></td>
                                        <td>{{$info->publisher}}</td>
                                        <td class="sticky">{{$info->keterangan }}</td>
                                        <td>{{$info->day}}</td>
                                        <td>{{$info->jenis}}</td>
                                    </tr>
                                @empty
                                    <td colspan="7" class="text-center">Tidak ada data...</td>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
        </section> 
        <!-- /.content -->
        </div>
        @endsection
    </body>
</html>