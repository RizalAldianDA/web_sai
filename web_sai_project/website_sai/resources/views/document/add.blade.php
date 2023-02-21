<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Upload File</title>

        <style>
            .width{
                width: 100%;
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

        
            <div class="row">
                <div class="col-md-8 col-xl-6">


                    <section class="content-header">


                    <h1>Upload File</h1>
                    <hr>
                    <form action="{{ route('document.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf


                    </section>
                    
                    <section class="content">



                    <div class="form-group">
                        <label for="nama_file">Nama File</label>
                        <input type="text" class="form-control @error('nama_file') is-invalid @enderror" id="nama_file" name="nama_file" value="{{ old('nama_file') }}">
                        @error('nama_file')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>
                    
                    <div class="form-group">
                        <label for="publisher_file">Publisher</label>
                        <input type="text" class="form-control @error('publisher_file') is-invalid @enderror" id="publisher_file" name="publisher_file" value="{{ old('publisher_file') }}">
                        @error('publisher_file')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>

                    <div class="form-group">
                        <label for="file">File</label>
                        <input type="file" class="form-control-file" id="file" name="file">
                        @error('file')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>

                    <div class="form-group">
                        <label for="tipe_file">Tipe</label>
                        <select class="form-control" name="tipe_file" id="tipe_file">
                            <option value="Document" {{ old('tipe_file')=='Document' ? 'selected': '' }} >
                            Document Mutu
                            </option>
                            <option value="Download" {{ old('tipe_file')=='Download' ? 'selected': '' }} >
                            Download
                            </option>
                        </select>
                        @error('tipe_file')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <br>
                    
                    <button type="submit" class="btn btn-primary mb-2 width">INPUT</button>
                    </form>        
                </div>
            </div>
        

</section> 
<!-- /.content -->
</div>
@endsection
        
    </body>
</html>