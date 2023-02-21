<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Edit File</title>
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
            
            <h1>Edit File</h1>
            <hr>
            <form action="{{ route('document.update',['document' => $document->id]) }}" method="POST" enctype="multipart/form-data">
                @method('PATCH')
                @csrf
                <div class="form-group">
                    <label for="nama_file">Nama File</label>
                    <input type="text" class="form-control @error('nama_file') is-invalid @enderror" id="nama_file" name="nama_file" value="{{ old('nama_file') ?? $document->nama_file }}">
                    @error('nama_file')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <br>
            </section>
             
            <section class="content">
                <div class="form-group">
                    <label for="publisher_file">Publisher</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror" id="publisher_file" name="publisher_file" value="{{ old('name') ?? $document->publisher_file }}">
                    @error('name')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <br>
                <div class="form-group">
                    <label for="file">File</label>
                    <br>{{$document->file}}<br><br>
                    <input type="file" class="form-control-file" id="file" name="file">
                    @error('file')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <br>
                <div class="form-group">
                    <label for="tipe_file">Tipe</label>
                    <select class="form-control" name="tipe_file" id="tipe_file">
                        <option value="Document" {{ (old('tipe_file') ?? $document->tipe_file)== 'Document' ? 'selected': '' }} > Document
                        </option>
                        <option value="Download" {{ (old('tipe_file') ?? $document->tipe_file)== 'Download' ? 'selected': '' }} > Download
                        </option>
                    </select>
                    @error('tipe_file')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <br>
                <button type="submit" class="btn btn-primary mb-2">Update</button>
            </form>
        </div>
    </div>
</section> 
<!-- /.content -->
</div>
@endsection

</body>
</html>