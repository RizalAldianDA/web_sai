<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel 
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../../website_sai/vendor/almasaeed2010/adminlte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href=""><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>-->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
          <a href="{{route('beranda.index')}}">
            <i class="fa fa-dashboard"></i> <span>Information</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>    
        <li>
          <a href="{{route('document.index')}}">
            <i class="fa fa-files-o"></i>
            <span>Document</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>
        <li class="active">
          <a href="{{route('check.index')}}">
            <i class="fa fa-check-square-o"></i>
            <span>Status</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
