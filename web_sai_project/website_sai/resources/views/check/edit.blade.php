<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Page</title>
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
        <div class="col-md-2">
            <section class="content-header">

            <h1>Edit Page</h1>
            <hr>
            <form action="{{ route('check.update',['check' => $check->id]) }}" method="POST">
                @method('PATCH')
                @csrf
                
            </section>
             
            <section class="content">
             
                <div class="form-group">
                    <label for="document_page">Status Document Mutu Page</label>
                    <select class="form-control" name="document_page" id="document_page">
                        <option value="Up" {{ (old('document_page') ?? $check->document_page)== 'Up' ? 'selected': '' }} > Up
                        </option>
                        <option value="Down" {{ (old('document_page') ?? $check->document_page)== 'Down' ? 'selected': '' }} > Down
                        </option>
                    </select>
                    @error('document_page')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <br>
                <div class="form-group">
                    <label for="download_page">Status Download Page</label>
                    <select class="form-control" name="download_page" id="download_page">
                        <option value="Up" {{ (old('download_page') ?? $check->download_page)== 'Up' ? 'selected': '' }} > Up
                        </option>
                        <option value="Down" {{ (old('download_page') ?? $check->download_page)== 'Down' ? 'selected': '' }} > Down
                        </option>
                    </select>
                    @error('download_page')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <br>
                <button type="submit" class="btn btn-primary mb-2">Update</button>
            </form>
            </section> 
        </div>
        
<!-- /.content -->
</div>
@endsection

</body>
</html>