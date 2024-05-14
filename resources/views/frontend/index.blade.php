@extends('constra_template.master')

@section('content')
    <!-- Carousel -->
<div id="main-slide" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ol class="carousel-indicators visible-lg visible-md">
        <li data-target="#main-slide" data-slide-to="0" class="active"></li>
        <li data-target="#main-slide" data-slide-to="1"></li>
        <li data-target="#main-slide" data-slide-to="2"></li>
    </ol>
    <!--/ Indicators end-->

    <!-- Carousel inner -->
    <div class="carousel-inner">

    <div class="item active" style="background-image:url({{asset('constra/images/slider-main/lima.jpg')}})">
            <div class="slider-content">
                <div class="col-md-12 text-center" style="margin-top: 300px;">
                    <h3 class="slide-sub-title animated5 ">selamat datang di desa mancagar</h3>
                </div>
            </div>
        </div>
        <!--/ Carousel item 1 end -->

        <div class="item" style="background-image:url({{asset('constra/images/slider-main/dua.jpg')}})">
            <div class="slider-content">
                <div class=" col-md-12 text-center" style="margin-top: 300px;">
                    <h3 class="slide-sub-title animated5 ">menuju desa modern </h3>
                </div>
            </div>
        </div>
        <!--/ Carousel item 2 end -->

        <div class="item" style="background-image:url({{asset('constra/images/slider-main/text.jpg')}})">
            <div class="slider-content ">
                <div class="col-md-12 text-center" style="margin-top: 300px;">
                    <h3 class="slide-sub-title animated7">dengan sistem digital</h3>
                </div>
            </div>
        </div>
        <!--/ Carousel item 3 end -->

    </div><!-- Carousel inner end-->

    <!-- Controllers -->
    <a class="left carousel-control" href="#main-slide" data-slide="prev">
        <span><i class="fa fa-angle-left"></i></span>
    </a>
    <a class="right carousel-control" href="#main-slide" data-slide="next">
        <span><i class="fa fa-angle-right"></i></span>
    </a>
</div>
<!--/ Carousel end -->


<section id="carousel slide" class="facts-area dark-bg">
    <div class="container">
        <div class="row">
            <div class="facts-wrapper">
                <div class="col-sm-3 ts-facts">
                    <div class="ts-facts-img">
                        <img src="{{asset('constra/images/icon-image/fact1.png')}}" alt="" />
                    </div>
                    <div class="ts-facts-content">
                    <h2 class="ts-facts-num"><span class="counterUp">0</span></h2>
                        <h3 class="ts-facts-title">Kepala keluarga</h3>
                    </div>
                </div><!-- Col end -->

                <div class="col-sm-3 ts-facts">
                    <div class="ts-facts-img">
                        <img src="{{asset('constra/images/icon-image/satu.png')}}" alt="" style="width: 60px; height: 60px;">
                    </div>
                    <div class="ts-facts-content">
                    <h2 class="ts-facts-num"><span class="counterUp">0</span></h2>
                        <h3 class="ts-facts-title">Masyarakat</h3>
                    </div>
                </div><!-- Col end -->

                <div class="col-sm-3 ts-facts">
                    <div class="ts-facts-img">
                        <img src="{{asset('constra/images/icon-image/dua.png')}}" alt="" />
                    </div>
                    <div class="ts-facts-content">
                    <h2 class="ts-facts-num"><span class="counterUp">0</span></h2>
                        <h3 class="ts-facts-title">Perempuan</h3>
                    </div>
                </div><!-- Col end -->

                <div class="col-sm-3 ts-facts">
                    <div class="ts-facts-img">
                        <img src="{{asset('constra/images/icon-image/tiga.png')}}" alt="" />
                    </div>
                    <div class="ts-facts-content">
                    <h2 class="ts-facts-num"><span class="counterUp">0</span></h2>
                        <h3 class="ts-facts-title">laki-laki</h3>
                    </div>
                </div><!-- Col end -->
            </div> <!-- Facts end -->
        </div>
        <!--/ Content row end -->
    </div>
    <!--/ Container end -->
</section><!-- Facts end -->

<section id="desas" class="dodo">
<div class="container text-center">
    <div class="row">
      <div class="col-sm-8">
        <div class="card w-50">
            <div class="card-body border-bg">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

              <div class="card-body dark-bg">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              </div>
            </div>
          </div>
       
    
      </div>


    
      <div class="col-sm-4">col-sm-4</div>
    </div>
  </div>
</section>


  <section id="news" class="news">
    <div class="container">
        <div class="row text-center">
            <h3 class="section-sub-title">Baca Berita terbaru</h3>
        </div>
    
 
</section>

@endsection

@push('styles')
    	<!-- Animation -->
	<link rel="stylesheet" href="{{asset('constra/css/animate.css')}}">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="{{asset('constra/css/owl.carousel.min.css')}}">
	<link rel="stylesheet" href="{{asset('constra/css/owl.theme.default.min.css')}}">		
@endpush

@push('script')
<!-- Owl Carousel -->
<script type="text/javascript" src="{{asset('constra/js/owl.carousel.min.js')}}"></script>
@endpush

