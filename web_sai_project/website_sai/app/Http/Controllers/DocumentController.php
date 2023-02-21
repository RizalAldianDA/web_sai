<?php

namespace App\Http\Controllers;

use App\Document;
use Illuminate\Http\Request;
use File;

class DocumentController extends Controller
{
    public function create_doc()
    {
        return view('document.add');
    }
    public function store_doc(Request $request){
        $validateData = $request->validate([
            'nama_file' => 'required',
            'publisher_file' => 'required|min:3|max:50',
            'file' => 'required|file|max:100000',
            'tipe_file' => 'required',
        ]);
        $info = new Document();
        $info->nama_file= $validateData['nama_file'];
        $info->publisher_file= $validateData['publisher_file'];
        if($request->hasFile('file'))
        {
            $extFile = $request->file->getClientOriginalExtension();
            $namaFile = 'file-'.time().".".$extFile;
            $path = $request->file->move('assets/files',$namaFile);
            $info->file = $path;
        }
        $info->tipe_file= $validateData['tipe_file'];   
        $info->save();
        $request->session()->flash('pesan','Penambahan data berhasil');
        return redirect()->route('document.index');
    }
    public function index_doc()
    {
        $info = Document::all();
        return view('document.index',['documents' => $info]);
    }
    public function edit_doc($document_id)
    {
        $result = Document::findOrFail($document_id);
        return view('document.edit',['document' => $result]);
    }
    public function update_doc(Request $request, Document $document){
        $validateData = $request->validate([
            'nama_file' => 'required',
            'publisher_file' => 'required|min:3|max:50',
            'file' => 'required|file|max:100000',
            'tipe_file' => 'required',
        ]);
        $document->nama_file= $validateData['nama_file'];
        $document->publisher_file= $validateData['publisher_file'];
        if($request->hasFile('file'))
        {
            $extFile = $request->file->getClientOriginalExtension();
            $namaFile = 'file-'.time().".".$extFile;
            File::delete($document->file);
            $path = $request->file->move('assets/files',$namaFile);
            $document->file = $path;
        }
        $document->tipe_file= $validateData['tipe_file'];   
        $document->save();
        $request->session()->flash('pesan','Perubahan info berhasil');
        return redirect()->route('document.index');
    }
    public function destroy_doc(Request $request, Document $document)
    {
        File::delete($document->file);
        $document->delete();
        $request->session()->flash('pesan','Hapus info berhasil');
        return redirect()->route('document.index');
    }

}
