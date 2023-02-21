<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
        <title>Status</title>
    </head>
    <body>
        @extends('admin_layout_stat.app')
        @section('header')
        @include('admin_layout_stat.header')
        @endsection
        @section('leftbar')
        @include('admin_layout_stat.leftbar')
        
        @endsection
        @section('rightbar')
        @include('admin_layout_stat.rightbar')
        @endsection
        @section('content')
        <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <h1>
            <div class="py-4 align-items-center">
                <h2 class="mr-auto d-flex justify-content-start">Status</h2>
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
                                    <th>Document Mutu Page</th>
                                    <th>Download Page</th>
                                    <th><center>Action</center></th>
    
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($checks as $info)
                                    <tr>
                                        <th>{{$loop->iteration}}</th>
                                        <td>{{$info->document_page}}</td>
                                        <td>{{$info->download_page}}</td>
                                        <td>
                                            <center>
                                                <a href="{{ route('check.edit',['check' => $info->id]) }}" class="btn btn-primary">Change</a>
                                            </center>
                                        </td>
                                    </tr>
                                @empty
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