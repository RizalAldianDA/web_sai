<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Informasi</title>
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
                <div class="col-md-6 col-xl-6">
            
                    <section class="content-header">
                    <h1>Edit Informasi</h1>
                    <hr>
                    </section>
                    <section class="content">
                        <form action="{{ route('beranda.update',['beranda' => $beranda->id]) }}" method="POST" enctype="multipart/form-data">
                            @method('PATCH')
                            @csrf
                            <div class="form-group">
                                <label for="judul_info">Judul</label>
                                <input type="text" class="form-control @error('judul_info') is-invalid @enderror" id="judul_info" name="judul_info" value="{{ old('judul_info') ?? $beranda->judul_info }}">
                                @error('judul_info')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <br>     

                            <div class="form-group">
                                <label for="publisher">Publisher</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" id="publisher" name="publisher" value="{{ old('name') ?? $beranda->publisher }}">
                                @error('name')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <br>

                            <div class="form-group">
                                <label for="keterangan">Keterangan</label>
                                <textarea class="form-control" id="keterangan" rows="3" name="keterangan">{{ old('keterangan') ?? $beranda->keterangan}}</textarea>
                            </div>
                            <br>

                            <div class="form-group">
                                <label for="tanggal">
                                    Tanggal
                                </label>
                                <input type="date" class="form-control @error('tanggal') is-invalid @enderror" id="tanggal" name="tanggal" value="{{ old('day') ?? $beranda->day }}">
                                @error('day')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <br>
                            
                            <div class="form-group">
                                <label for="image">Related Image</label>
                                <br><img height="150px" src="{{ url('') }}/{{$beranda->image}}" class="rounded" alt=""><br><br>
                                <input type="file" class="form-control-file" id="image" name="image">
                                @error('image')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <br>

                            <div class="form-group">
                                <label for="jenis">Tipe</label>
                                <select class="form-control" name="jenis" id="jenis">
                                    <option value="Berita" {{ (old('jenis') ?? $beranda->jenis)== 'Berita' ? 'selected': '' }} > Berita
                                    </option>
                                    <option value="Artikel" {{ (old('jenis') ?? $beranda->jenis)== 'Artikel' ? 'selected': '' }} > Artikel
                                    </option>
                                    <option value="Recruitment" {{ (old('jenis') ?? $beranda->jenis)== 'Recruitment' ? 'selected': '' }} > Recruitment
                                    </option>
                                </select>
                                @error('jenis')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <br>
                            <button type="submit" class="btn btn-primary mb-2">Update</button>
                        </form>
                    </section>
                </div>
            </div>
        </div>
     
    <!-- /.content -->
    </div>
    @endsection


</body>
</html>