<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Pembuatan Informasi</title>

        <style>
            .width{
                width: 100%;
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



        <div class="bg-white">
            <div class="row">
                <div class="col-md-8 col-xl-6">


                    <section class="content-header">


                    <h1>Pembuatan Informasi</h1>
                    <hr>
                    <form action="{{route('beranda.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf

                    </section>
                    
                    <section class="content">



                    <div class="form-group">
                        <label for="judul_info">Judul</label>
                        <input type="text" class="form-control @error('judul_info') is-invalid @enderror" id="judul_info" name="judul_info" value="{{ old('judul_info') }}">
                        @error('judul_info')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>
                    
                    <div class="form-group">
                        <label for="publisher">Publisher</label>
                        <input type="text" class="form-control @error('publisher') is-invalid @enderror" id="publisher" name="publisher" value="{{ old('publisher') }}">
                        @error('publisher')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>
                    
                    <div class="form-group">
                        <label for="keterangan">Keterangan</label>
                        <textarea class="form-control" id="keterangan" rows="3" name="keterangan">{{ old('keterangan') }}</textarea>
                    </div>
                    <br>

                    <div class="form-group">
                        <label for="tanggal">
                            Tanggal
                        </label>
                        <input type="date" class="form-control @error('tanggal') is-invalid @enderror" id="tanggal" name="tanggal" value="{{ old('tanggal') }}" placeholder="dd-mm-yyyy">
                        @error('tanggal')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>

                    <div class="form-group">
                        <label for="jenis">Jenis Informasi</label>
                        <select class="form-control" name="jenis" id="jenis">
                            <option value="Berita" {{ old('jenis')=='Berita' ? 'selected': '' }} >
                            Berita
                            </option>
                            <option value="Artikel" {{ old('jenis')=='Artikel' ? 'selected': '' }} >
                            Artikel
                            </option>
                            <option value="Recruitment" {{ old('jenis')=='Recruitment' ? 'selected': '' }} >
                            Recruitment
                            </option>
                        </select>
                        @error('jenis')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>

                    <div class="form-group">
                        <label for="image">Related Image</label>
                        <input type="file" class="form-control-file" id="image" name="image">
                        @error('image')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>
                    
                    <button type="submit" class="btn btn-primary mb-2 width">INPUT</button>
                    </form>        
                </div>
            </div>
        </div>

    </section> 
    <!-- /.content -->
    </div>
    @endsection
        
    </body>
</html>