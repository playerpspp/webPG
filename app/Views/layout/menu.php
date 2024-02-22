<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
    <div class="nano">
        <div class="nano-content">
            <ul>
                <div class="logo"><a href="index.html">
                    <!-- <img src="images/logo.png" alt="" /> --><span>Playground Konoha</span></a></div>
                    <li class="label">Dashboard</li>
                    <li><a href="/home/dashboard"><i class="ti-dashboard"></i> Dashboard </a></li>
                    <br>
                    <li class="label">Features</li>
                    
                    <?php  if(session()->get('level')== 1){ ?>
                    <li><a class="sidebar-sub-toggle"><i class="ti-user"></i> User <span
                        class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                        <li><a href="<?= base_url('/Data_Pegawai')?>">Pengawai</a></li>
                     </ul>
                 </li>
                 <?php  }else{}?>
                 
                
                <li><a class="sidebar-sub-toggle"><i class="ti-server"></i> Data <span
                    class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                    <li><a href="<?= base_url('/Playground/permainan')?>">List Permainan</a></li>
                    <li><a href="<?= base_url('/Playground/pembelian_tiket')?>">Pembelian Tiket</a></li>
                        
                    </ul>
                </li>
               

               <?php  if(session()->get('level')== 1){ ?>

                <li class="label">Laporan</li>
              <li><a href="/laporan"><i class="ti-info-alt"></i> Laporan Tiket</a></li>

              <?php  }else{}?>

              <br>
              <li class="label">Account</li>
              <li><a href="/profile"><i class="ti-info-alt"></i> Profile</a></li>
              <li><a href="/home/logout"><i class="ti-close"></i> Logout</a></li>
          </ul>
      </div>
  </div>
</div>
<!-- /# sidebar -->









<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="float-left">
                    <div class="hamburger sidebar-toggle">
                        <span class="line"></span>
                        <span class="line"></span>
                        <span class="line"></span>
                    </div>
                </div>
                <div class="float-right">

                    <div class="header-icon" data-toggle="dropdown">
                        <span class="user-avatar">
                         
                         <?= session()->get('username')?>
                     </span>

                 </div>
             </div>
         </div>
     </div>
 </div>
</div>

<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <div class="page-header">
                        <div class="page-title">
                            <h1>Hello, <span>Welcome <?= session()->get('nama_pegawai')?></span></h1>
                        </div>
                    </div>
                </div>
            </div>
<section id="main-content">