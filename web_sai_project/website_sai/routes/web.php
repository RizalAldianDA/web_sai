<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
Route::get('/adminlte/index', 'AdminLTEController@index')->name('adminlte.index');

Route::get('/adminlte/beranda/switch/create', 'CheckController@create')->name('check.create');

Route::post('/adminlte/beranda/switch','CheckController@store')->name('check.store');
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
});
/*Switch Turn off/on Page*/
Route::get('/adminlte/beranda/status', 'CheckController@index')->name('check.index')->middleware('login_auth');

Route::get('/adminlte/beranda/status/{check}/edit', 'CheckController@edit')->name('check.edit')->middleware('login_auth');

Route::patch('/adminlte/beranda/status/{check}', 'CheckController@update')->name('check.update')->middleware('login_auth');


/*ADMIN DOCUMENT ROUTE*/
Route::get('/adminlte/beranda/document/create-document', 'DocumentController@create_doc')->name('document.add')->middleware('login_auth');

Route::post('/adminlte/beranda/document','DocumentController@store_doc')->name('document.store')->middleware('login_auth');

Route::get('/adminlte/beranda/document', 'DocumentController@index_doc')->name('document.index')->middleware('login_auth'); 

Route::get('/adminlte/beranda/document/{document}/edit', 'DocumentController@edit_doc')->name('document.edit')->middleware('login_auth');

Route::patch('/adminlte/beranda/document/{document}', 'DocumentController@update_doc')->name('document.update')->middleware('login_auth');

Route::delete('/adminlte/beranda/document/{document}', 'DocumentController@destroy_doc')->name('document.destroy')->middleware('login_auth');

/*ADMIN BERANDA ROUTE*/
Route::get('/adminlte/beranda/create', 'AdminLTEBerandaController@create')->name('beranda.create')->middleware('login_auth');

Route::post('/adminlte/beranda','AdminLTEBerandaController@store')->name('beranda.store')->middleware('login_auth');

Route::get('/adminlte/beranda', 'AdminLTEBerandaController@index')->name('beranda.index')->middleware('login_auth');

Route::get('/adminlte/beranda/{beranda}', 'AdminLTEBerandaController@show')->name('beranda.show')->middleware('login_auth');

Route::get('/adminlte/beranda/{beranda}/edit', 'AdminLTEBerandaController@edit')->name('beranda.edit')->middleware('login_auth');

Route::patch('/adminlte/beranda/{beranda}', 'AdminLTEBerandaController@update')->name('beranda.update')->middleware('login_auth');

Route::delete('/adminlte/beranda/{beranda}', 'AdminLTEBerandaController@destroy')->name('beranda.destroy')->middleware('login_auth');



/*ADMIN LOGIN ROUTE*/
Route::get('/login', 'AdminController@index')->name('login.index');

Route::get('/logout', 'AdminController@logout')->name('login.logout');

Route::post('/login', 'AdminController@process')->name('login.process');

/*HOME ROUTE*/
Route::get('/home', 'BerandaController@data')->name('beranda.data');

Route::get('/home/category/article', 'BerandaController@artikel')->name('beranda.artikel');

Route::get('/home/category/news', 'BerandaController@berita')->name('beranda.berita');

Route::get('/home/category/recruitment', 'BerandaController@rekuit')->name('beranda.rekuit');

Route::get('/home/information/{info}', 'BerandaController@info')->name('beranda.info');

Route::get('/home/search','BerandaController@search')->name('beranda.search');


Route::get('/home/ittp', 'BerandaController@ittp')->name('ittp');

Route::get('/home/cdc', 'BerandaController@cdc')->name('cdc');

Route::get('/home/spm', 'BerandaController@spm')->name('spm');

Route::get('/home/kemahasiswaan', 'BerandaController@kemahasiswaan')->name('siswaan');

Route::get('/home/kerjasama', 'BerandaController@kerjasama')->name('kerjasama');

Route::get('/home/pmb','BerandaController@pmb')->name('pmb');

Route::get('/home/sekpim','BerandaController@sekpim')->name('sekpim');

Route::get('/home/keu','BerandaController@keu')->name('keu');

Route::get('/home/sdm','BerandaController@sdm')->name('sdm');

Route::get('/home/log','BerandaController@log')->name('log');

Route::get('/home/akademik','BerandaController@akademik')->name('akademik');

Route::get('/home/konsul','BerandaController@konsul')->name('konsul');




Route::get('/home/document-mutu', 'BerandaController@document')->name('document.mutu')->middleware('check_page');

Route::get('/home/download', 'BerandaController@download')->name('document.download')->middleware('check_other');


/*TENTANG KAMI ROUTE*/
Route::get('/tentang-kami/satuan-audit-internal', 'InfoController@sai')->name('tentangkami.sai');

Route::get('/tentang-kami/visi-dan-misi', 'InfoController@vdm')->name('tentangkami.vdm');

Route::get('/tentang-kami/kedudukan-dan-tugas', 'InfoController@kdt')->name('tentangkami.kdt');

Route::get('/aktivitas/kewenangan-dan-tanggung-jawab', 'InfoController@kdtj')->name('aktivitas.kdtj');

Route::get('/aktivitas/tujuan-dan-fungsi', 'InfoController@tdf')->name('aktivitas.tdf');

Route::get('/aktivitas/kode-etik-dan-hubungan-kerja', 'InfoController@kedh')->name('aktivitas.kedh');




