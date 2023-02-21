<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
        <title>Data File</title>
        <style>
            .background{
    position: absolute;
    z-index: -1;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    opacity: 0.1;
    background-attachment: fixed;
}
        </style>
    </head>
    <body>
        @extends('admin_layout_doc.app')
        @section('header')
        @include('admin_layout_doc.header')
        @endsection
        @section('leftbar')
        @include('admin_layout_doc.leftbar')
        
        @endsection
        @section('rightbar')
        @include('admin_layout_doc.rightbar')
        @endsection
        @section('content')
        <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <h1>
            <div class="py-4 align-items-center">
                <h2 class="mr-auto d-flex justify-content-start">Tabel File</h2>
                <a href="{{ route('document.add') }}" class="btn btn-primary">
                   Tambah File
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
                                    <th>Nama File</th>
                                    <th>Publisher File</th>
                                    <th colspan="3"><center>Action</center></th>
                                    <th>Tipe File</th>
    
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($documents as $info)
                                    <tr>
                                        <th>{{$loop->iteration}}</th>
                                        <td>{{$info->nama_file}}</td>
                                        <td>{{$info->publisher_file}}</td>
                                        <td>
                                            <center>
                                                <a class="btn btn-primary" href="../../../{{$info->file}}" alt="">Download</a>
                                            </center>
                                        </td>
                                        <td>
                                            <center>
                                            <a href="{{ route('document.edit',['document' => $info->id]) }}"
                                            class="btn btn-primary">Edit
                                            </a>
                                            </center>
                                        </td>
                                        <td>
                                            <center>
                                            <form action="{{ route('document.destroy',['document' => $info->id]) }}" method="POST">
                                                @method('DELETE')
                                                @csrf
                                            <button type="submit" class="btn btn-danger ml-3">Hapus</button>
                                            </form>
                                            </center>
                                        </td>
                                        <td>{{$info->tipe_file}}</td>
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