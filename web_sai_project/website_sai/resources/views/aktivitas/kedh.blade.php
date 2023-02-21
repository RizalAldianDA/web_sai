
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Satuan Audit Internal Institute Technology Telcom Purwokerto</title> <!--Satuan Audit Internal Institute Technology Telcom Purwokerto-->

        <!--link-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/pure-min.css" integrity="sha384-Uu6IeWbM+gzNVXJcM9XV3SohHtmWE+3VGi496jvgX1jyvDTXfdK+rfZc8C1Aehk5" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/base-min.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/grids-min.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/grids-responsive-min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <!--font-->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/base-min.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/grids-min.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.6/build/grids-responsive-min.css">

        <!--style-->
        <style>
            html {
                  height: 100%;
              }
              body {
                  margin: 0;
                  font-family: Arial, Helvetica, sans-serif,"Open Sans";
                  min-height: 100%;
                  background-color: white;
                  
              }
              .padding-top{
                  margin-top: 2%;
                  font-family: Arial, Helvetica, sans-serif,"Open Sans";
              }
              .content {
                  max-width: 80%; 
                  margin: 0 auto !important; 
                  float: none !important;
                  
              }
              /*____________________Top Navigation__________________*/
              /* Add a black background color to the top navigation */
              .topnav{
                  background-color:#B22222;
                  overflow: hidden;
              }
              .topnav-right{
                  float: right;
              }
              .navbar-toggler{
                  padding: 14px;
                  border: none;
              }
              /* Style the links inside the navigation bar */
              .topnav a {
                  float: left;
                  color: white;
                  padding: 16px;
                  text-decoration: none;
                  font-size: 10px;
                  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
              }
              /* Change the color of links on hover */
              .topnav a:hover {
                  background-color: white;
                  color: black;
              }
  
              /* Add a color to the active/current link */
              .topnav a.active {
                  background-color: #B22222;
                  color: white;
              }
  
  
              /*___________Bot Navigation_____________*/
              .botnav {
                  background-color: white ;
                  overflow: hidden;
                  padding-top: 1%;
              }
              .botnav-right{
                  float: right;
              }
              .botnav a {
                  float: left;
                  color:#B22222;
                  text-align: center;
                  padding: 13px 16px;
                  text-decoration: none;
                  font-size: 13px;
                  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
              }
              .navbar-toggler-icon{
                  color:white; 
              }
  
              /* Change the color of links on hover */
              .botnav a:hover {
                  background-color: #B22222;
                  color: white;
                  height: 100%;
              }
  
              /* Add a color to the active/current link */
              .botnav a.active {
                  background-color:#B22222;
                  color: white;
                  height: 100%;
              }
              .btn{
                  float: right;
                  height: 35px;
              }
            
              
              /*Dropdown Menu Navigation Bar*/
              .dropdown {
                  float: left;
                  overflow: hidden;
              }
  
              .dropdown .dropbtn {
                  font-size: 13px;  
                  border: none;
                  outline: none;
                  color: #B22222;
                  padding: 16px 16px;
                  background-color: inherit;
                  margin: 0;
                  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
              }
  
              .navbar a:hover, .dropdown:hover .dropbtn {
                  background-color:#B22222;
                  color:  white;
              }
             
              .dropdown-content {
                  display: none;
                  position: fixed;
                  background-color: white;
                  min-width: 160px;
                  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                  z-index: 1;
              }
              .dropdown-content a {
                  float: none;
                  color:#B22222;
                  padding: 12px 16px;
                  text-decoration: none;
                  display: block;
                  text-align: left;
              }
  
              .dropdown-content a:hover {
                  color: white;
              }
  
              .dropdown:hover .dropdown-content {
                  display: block;
              }
              .dropbtn-active{
                  color: white !important;
              }
  
              @media screen and (min-width: 100px)and (max-width: 700px)  {  
                  .botnav-right{
                      float: none;
                  }
                  .dropdown {
                      float: left;
                      overflow: hidden;
                      width: 100%;
                  }
                  .botnav a.active {
                      width: 100%;
                  }
                  .botnav a {
                      float: left;
                      text-align: center;
                      padding: 13px 16px;
                      text-decoration: none;
                      font-size: 13px;
                      font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                      width: 100%;
                  }
  
                  .dropdown .dropbtn {
                      font-size: 13px;  
                      border: none;
                      outline: none;
                      padding: 16px 16px;
                      width: 100%;
                      background-color: inherit;
                      margin: 0;
                      font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                  } 
                  .dropdown-content {
                      display: none;
                      position: relative;
                      width: 100%;
                      min-width: 160px;
                      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                      z-index: 1; 
                  }
                  .dropdown-content a {
                      float: none;
                      padding: 12px 16px;
                      text-decoration: none;
                      display: block;
                      text-align: left;
                      width: 100%;
                  }
              }
              .navbar-nav{
                padding-top: 10px;
            }
              
              /*Content Bottom*/
              .content-bottom{
                  position: relative;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  padding: 1rem;
                  background-color:#B22222;
                  margin-left: auto;
                  margin-right: auto;
                  padding-bottom: 5%;
                  width: 100%;
              }
              .bottom-logo{
                  right: 0;
                  bottom: 0;
                  left: 0;
                  padding: 1rem;            
                  margin-left: auto;
                  margin-right: auto;
                  color: white;
              }
              .link_bottom{
                  right: 0;
                  bottom: 0;
                  left: 0;
                  padding: 1rem;            
                  margin-left: auto;
                  margin-right: auto;
                  list-style: none;
                  color: white;
                  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                  
              }
              .link_bottom a:hover{
                  text-decoration: none;
                  color: orange !important;
              }
              .title_bottom{
                  right: 0;
                  bottom: 0;
                  left: 0;
                  padding: 1rem;            
                  margin-left: auto;
                  margin-right: auto;
                  list-style: none;
                  color: white;
                  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
              }
  
  
              /*Content*/  
              .container-content{
                  padding-bottom: 10%;
                  background-image: url("{{ url('') }}/assets/images/dummywallpaper.jpg");
                  background-size: 100%;
              }
              .container-content .row{
                  padding-bottom: 3%;
                  padding-top: 3%;
              }
              .container-content .pure-g{
                  padding-top: 3%;
                  padding-bottom: 3%;
              }
              .container-content img{
                  width: 100%;
                  height: 35%;
              }
              .container-content .tipe{
                  color: #b4b8b4;
                  font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                  font-size: 15px;
                  padding-left: 5%;
              }
              .container-content .judul{
                  font-family: 'Times New Roman', Times, serif;
                  font-size: 20px;
                  padding-left: 5%;
                  text-align: justify;
              }
  
              .pure-g a:hover{
                  text-decoration: none;
                  color:#B22222;
              }
              pre {
                  white-space: pre-wrap;       /* Since CSS 2.1 */
                  white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
                  white-space: -pre-wrap;      /* Opera 4-6 */
                  white-space: -o-pre-wrap;    /* Opera 7 */
                  word-wrap: break-word;       /* Internet Explorer 5.5+ */
                  display: -webkit-box;
                  -webkit-box-orient: vertical;
                  overflow: hidden;
                  font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                  padding-left: 5%;
                  text-align: justify;
              }
              @media screen and (min-width: 100px)and (max-width: 800px)  {  
                  .container-content img{
                      height: 100%;
                  }
                  .container-content .tipe{
                      padding-left: 0%;
                  }
                  .container-content .judul{
                      padding-left: 0%;
                  }
                  pre {
                      padding-left: 0%;
                  }
                  .break{
                      display: block;
                  }
              }
  
              
              .container-content .tipe-judul1{
                  padding-top: 3%;
                  color: #b4b8b4;
                  font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                  font-size: 15px;
              }
              .container-content .tipe-judul2{
                  font-family: 'Times New Roman', Times, serif;
                  font-size: 28px;
              }
             
              .halaman{
                  padding-top: 3%;
                  
              }
              .halaman .this {
                  color:#B22222;
              }
              .halaman a:hover{
                  text-decoration: none;
                  color: #B22222;
              }
              .pagination ul {
                  display: inline-block;
                  padding: 0;
                  margin: 0;
              }
  
              .pagination li {
                  display: inline;
                  color: #B22222;
              }
  
              .pagination li a {
                  color: #B22222;
                  float: left;
                  padding: 8px 16px;
                  text-decoration: none;
              }
              .pagination li:hover a {
                  color: #B22222;
                  float: left;
                  padding: 8px 16px;
                  text-decoration: none;
              }
  
              .pagination li.active a {
                  background-color: #B22222 !important;
                  color: white;
              }
  
              .pagination li:hover:not(.active) a {
                  background-color: #ddd;
              }
              .page-item.active .page-link{
                  background-color: #B22222;
                  border-color: white;
              }
              .bottom-extra{
                padding-top: 3%;
            }
            @media screen and (min-width: 400px)and (max-width: 1100px)  {  
                .bottom-extra-text{
                    font-size: 14px;
                }  
                .content{
                    max-width: 90%;
                } 
            }
            @media screen and (min-width: 100px)and (max-width: 400px)  {  
                .bottom-extra-text{
                    font-size: 12px;
                } 
                .content{
                    max-width: 90%;
                }   
            }

          </style>
    </head>
    <body>
        <div class="topnav">
            <div class="content">
                <nav class="navbar-expand-lg navbar-dark">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="Down" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="{{route('ittp')}}">ITTP</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('cdc')}}">CDC</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('spm')}}">SPM</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('siswaan')}}">Kemahasiswaan</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('kerjasama')}}">Kerjasama</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0" action="{{route('beranda.search')}}" method="GET">
                            <input id="name" class="form-control mr-sm-2" type="text" name="cari" placeholder="Search" aria-label="Search" value="{{old('cari')}}">
                            <button class="btn btn-outline-light my-2 my-sm-0" type="submit" value="cari"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </nav>
            </div>
        </div>

        <div class="botnav">
            <div class="content">
                <a href="{{ route('beranda.data')}}" class="navbar-brand"><img src="{{ url('') }}/assets/images/logo.png" width="30" height="30" class="d-inline-block align-top"></a>
                <nav class="navbar-expand-lg navbar-light">
                    <div class="botnav-right">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2" aria-expanded="Down" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>    
                        <div class="collapse navbar-collapse" id="navbarSupportedContent2">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item">
                                    <a href="{{ route('beranda.data')}}">BERANDA</a>
                                </li>
                                <li class="nav-item">
                                    <div class="dropdown">
                                        <button class="dropbtn">KATEGORI <i class="fa fa-caret-down"></i></button>
                                        <div class="dropdown-content">
                                        <a href="{{ route('beranda.artikel')}}">ARTIKEL</a>
                                        <a href="{{ route('beranda.berita')}}">BERITA</a>
                                        <a href="{{ route('beranda.rekuit')}}">RECRUITMENT</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <div class="dropdown">
                                        <button class="dropbtn">TENTANG KAMI <i class="fa fa-caret-down"></i></button>
                                        <div class="dropdown-content">
                                        <a href="{{ route('tentangkami.sai')}}">SATUAN AUDIT INTERNAL</a>
                                        <a href="{{ route('tentangkami.vdm')}}">VISI DAN MISI</a>
                                        <a href="{{ route('tentangkami.kdt')}}">KEDUDUKAN DAN TUGAS</a>
                                        </div>
                                    </div>  
                                </li>
                                
                                <li class="nav-item">
                                    <div class="dropdown">
                                        <button class="dropbtn dropbtn-active" style="background-color: #B22222">AKTIVITAS <i class="fa fa-caret-down"></i></button>
                                        <div class="dropdown-content">
                                        <a href="{{ route('aktivitas.kdtj')}}">KEWENANGAN DAN TANGGUNG JAWAB</a>
                                        <a href="{{ route('aktivitas.tdf')}}">TUJUAN DAN FUNGSI</a>
                                        <a class="active" href="{{ route('aktivitas.kedh')}}">KODE ETIK DAN HUBUNGAN KERJA</a>
                                        </div>
                                    </div>
                                </li>
                                @forelse ($switch as $check)
                                @if ($check->document_page=='Up'&&$check->download_page=='Up')
                                    <li class="nav-item">
                                        <a href="{{ route('document.mutu')}}">DOCUMENT MUTU</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ route('document.download')}}">DOWNLOAD</a>
                                    </li>
                                @elseif($check->document_page=='Up'&&$check->download_page=='Down')
                                    <li class="nav-item">
                                        <a href="{{ route('document.mutu')}}">DOCUMENT MUTU</a>
                                    </li>
                                @elseif($check->document_page=='Down'&&$check->download_page=='Up')
                                    <li class="nav-item">
                                        <a href="{{ route('document.download')}}">DOWNLOAD</a>
                                    </li>
                                @else 
                                @endif
                            @empty
                            @endforelse 
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        <div class="content">
            <div class="container-content">
                <div class="halaman">
                    <h6><a href="{{ route('beranda.data')}}">Beranda</a>&nbsp&nbsp<i class="fa fa-caret-right" style="color: #d0343c"></i><span class="this">&nbsp&nbspKode Etik, Hubungan Kerja dll</span></h6>
                </div>
                <style>
                    .container-content{
                        padding-bottom: 60%;   
                    }
                </style>
                @forelse ($kedh as $info)
                    <div class="pure-g">
                        <div class="l-box pure-u-1 pure-u-lg-1-1 pure-u-md-1-1">
                            <h5 class="judul">{{$info->info_title}}</h5></a>
                            <h6 class="tipe">{{$info->date}}&nbsp{{$info->info_pub}}</h6>
                            <pre>{{$info->info_ket}}</pre>
                        </div>
                    </div>
                @empty
                <style>
                    .container-content{
                        padding-bottom: 50%;   
                    }
                </style>
                @endforelse 
                {{ $kedh->links() }}                    
            </div> 
        </div>
        <div class="content-bottom">
            <div class="content bottom-extra">
                <div class="pure-g">
                    <div class="l-box-lrg pure-u-1 pure-u-lg-2-5 pure-u-md-1-2 pure-u-sm-1-2 bottom-extra-text">
                        <h5 class="pure-u-lg-1-2 bottom-logo">Website Audit Internal Institute Technology Telkom Purwokerto</h5>       
                        <ul class="link_bottom" >
                            <li><i class="fa fa-map-marker">&nbsp&nbsp&nbsp&nbsp</i>Jl. D.I Panjaitan No. 128 Purwokerto 53147, Jawa Tengah - Indonesia</li>
                            <br>
                            <li><i class="fa fa-envelope">&nbsp&nbsp</i>Email: sai@ittelkom-pwt.ac.id</li>
                        </ul>
                    </div>
                    <div class="l-box-lrg pure-u-1 pure-u-lg-2-5 pure-u-md-1-2 pure-u-sm-1-2 bottom-extra-text">
                        <h5 class="pure-u-lg-1-2 bottom-logo">Link Terkait</h5>       
                        <ul class="link_bottom" >
                            <li><a href="{{route('ittp')}}">IT Telkom Purwokerto</a></li>
                            <li><a href="{{route('pmb')}}">Penerimaan Mahasiswa Baru</a></li>
                            <li><a href="{{route('sekpim')}}">Sekretariat Pimpinan</a></li>
                            <li><a href="{{route('kerjasama')}}">Kerjasama</a></li>
                            <li><a href="{{route('keu')}}">Keuangan</a></li>
                            <li><a href="{{route('sdm')}}">Sumber Daya Manusia</a></li>
                            <li><a href="{{route('log')}}">Logistik</a></li>
                            <li><a href="{{route('akademik')}}">Akademik</a></li>
                            <li><a href="{{route('siswaan')}}">Kemahasiswaan</a></li>
                            <li><a href="{{route('konsul')}}">Konseling</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    <!--Jquery-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>