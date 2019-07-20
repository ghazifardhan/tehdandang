@extends('layouts.app')
@section('content')
<!--section-->
<div class="ps-section--hero"><img src="{{ asset('themes/images/hero/01.jpg') }}" alt="">
    <div class="ps-section__content text-center">
        <h3 class="ps-section__title">{{ $product->name }}</h3>
        <div class="ps-breadcrumb">
            <ol class="breadcrumb">
                <li><a href="{{ url('/') }}">Home</a></li>
                <li class="active">{{ $product->name }}</li>
            </ol>
        </div>
    </div>
</div>

<div class="ps-section pt-20 pb-20">
    <div class="container">
        <div class="ps-product--detail">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 ">
                    <div class="ps-product__thumbnail">
                        <!-- <div class="ps-badge"><span>50%</span></div> -->
                        <div class="owl-slider primary" data-owl-auto="true" data-owl-loop="false"
                            data-owl-speed="10000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="false"
                            data-owl-animate-in="" data-owl-animate-out="" data-owl-item="1" data-owl-item-xs="1"
                            data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1"
                            data-owl-nav-left="&lt;i class=&quot;fa fa-angle-left&quot;&gt;&lt;/i&gt;"
                            data-owl-nav-right="&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;">
                            <div class="ps-product__image"><a href="{{ asset('storage/' . $product->photo_products) }}"><img
                                        src="{{ asset('storage/' . $product->photo_products) }}" alt=""></a></div>
                        </div>
                        <!-- <div class="owl-slider second mb-30" data-owl-auto="true" data-owl-loop="false"
                            data-owl-speed="10000" data-owl-gap="20" data-owl-nav="false" data-owl-dots="false"
                            data-owl-animate-in="" data-owl-animate-out="" data-owl-item="4" data-owl-item-xs="2"
                            data-owl-item-sm="3" data-owl-item-md="4" data-owl-item-lg="4"
                            data-owl-nav-left="&lt;i class=&quot;fa fa-angle-left&quot;&gt;&lt;/i&gt;"
                            data-owl-nav-right="&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;"><img
                                src="images/cake/img-cake-12.jpg" alt=""><img src="images/cake/img-cake-11.jpg"
                                alt=""><img src="images/cake/img-cake-10.jpg" alt=""><img
                                src="images/cake/img-cake-6.jpg" alt=""><img src="images/cake/img-cake-5.jpg" alt="">
                        </div> -->
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 ">
                    <div style="margin-top: 100px;"></div>
                    <header>
                        <h3 class="ps-product__name">{{ $product->name }}</h3>
                        <!-- <select class="ps-rating">
                            <option value="1">1</option>
                            <option value="1">2</option>
                            <option value="1">3</option>
                            <option value="1">4</option>
                            <option value="5">5</option>
                        </select> -->
                        <!-- <p class="ps-product__price">£15.00 <del>£25.00</del></p> -->
                        <!-- <a class="ps-product__quickview popup-modal" href="#quickview-modal" data-effect="mfp-zoom-out">QUICK OVERVIEW</a> -->
                        <div class="ps-product__description">
                            <p>{{ $product->description }}</p>
                        </div>
                        <!-- <div class="ps-product__meta">
                            <p><span> Availability: </span> In stock</p>
                            <p class="category"><span>CATEGORIES: </span><a href="product-grid.html">Cupcake</a>,<a
                                    href="product-grid.html"> organic</a>,<a href="product-grid.html"> sugar</a>,<a
                                    href="product-grid.html"> sweet</a>,<a href="product-grid.html"> bio</a></p>
                        </div>
                        <div class="form-group ps-product__size">
                            <label>Size:</label>
                            <select class="ps-select" data-placeholder="Popupar product">
                                <option value="01">CHOOSE AN OPTION</option>
                                <option value="01">Item 01</option>
                                <option value="02">Item 02</option>
                                <option value="03">Item 03</option>
                            </select>
                        </div> -->
                        <!-- <div class="ps-product__shop">
                            <div class="form-group--number">
                                <button class="minus"><span>-</span></button>
                                <input class="form-control" type="text" value="1">
                                <button class="plus"><span>+</span></button>
                            </div>
                            <ul class="ps-product__action">
                                <li><a href="#" data-tooltip="Add to wishlist"><i class="ps-icon--heart"></i></a></li>
                                <li><a href="#" data-tooltip="Compare"><i class="ps-icon--reload"></i></a></li>
                            </ul>
                        </div> -->
                    </header>
                    <!-- <footer>
                        <div class="row">
                            <div class="col-lg-6 col-md-5 col-sm-6 col-xs-12 ">
                            <a style="color: white !important;" class="ps-btn--fullwidth ps-btn ps-product__quickview popup-modal" href="#quickview-modal" data-effect="mfp-zoom-out">
                                Purchase Now
                                <i class="fa fa-angle-right"></i>
                            </a>
                            </div>
                            <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12 ">
                                <p class="ps-product__sharing">Share with:<a href="#"><i
                                            class="fa fa-facebook"></i></a><a href="#"><i
                                            class="fa fa-google-plus"></i></a><a href="#"><i
                                            class="fa fa-twitter"></i></a></p>
                            </div>
                        </div>
                    </footer> -->
                </div>
            </div>
        </div>
    </div>
</div>

<div class="ps-section ps-section--news pt-20 pb-20 " style="margin-top: 50px; margin-bottom: 50px;">
    <div class="container">
        <div class="row">
            <div class="ps-section__header text-center mb-50">
                <h4 class="ps-section__top">Teh Dandang</h4>
                <h3 class="ps-section__title ps-section__title--full">Tersedia di Toko Grosir</h3>
            </div>
            <div class="owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="10000" data-owl-gap="40"
                data-owl-nav="false" data-owl-dots="false" data-owl-animate-in="" data-owl-animate-out="" data-owl-item="6"
                data-owl-item-xs="4" data-owl-item-sm="4" data-owl-item-md="4" data-owl-item-lg="4"
                data-owl-nav-left="&lt;i class=&quot;fa fa-angle-left&quot;&gt;&lt;/i&gt;"
                data-owl-nav-right="&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;"><a href="#"><img
                        src="{{ asset('themes/images/partner/1.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/2.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/3.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/4.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/5.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/6.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/7.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/8.jpg') }}" alt=""></a><a href="#"><img
                        src="{{ asset('themes/images/partner/9.jpg') }}" alt=""></a>
            </div>
        </div>
    </div>
</div>

@endsection

@section('popup')
<div class="modal-popup mfp-with-anim mfp-hide" id="quickview-modal" tabindex="-1">
    <button class="modal-close"><i class="fa fa-remove"></i></button>
    <div class="ps-product-modal ps-product--detail clearfix">
            <div class="row" style="height: 250px !important;">
                <div class="ps-section__header text-center mb-50">
                    <h4 class="ps-section__top">Teh Dandang</h4>
                    <h3 class="ps-section__title ps-section__title--full">Tersedia di Toko Grosir</h3>
                </div>
                <div class="owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="10000" data-owl-gap="40"
                    data-owl-nav="false" data-owl-dots="false" data-owl-animate-in="" data-owl-animate-out="" data-owl-item="6"
                    data-owl-item-xs="4" data-owl-item-sm="4" data-owl-item-md="4" data-owl-item-lg="4"
                    data-owl-nav-left="&lt;i class=&quot;fa fa-angle-left&quot;&gt;&lt;/i&gt;"
                    data-owl-nav-right="&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;"><a href="#"><img
                            src="{{ asset('themes/images/partner/1.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/2.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/3.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/4.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/5.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/6.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/7.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/8.jpg') }}" alt=""></a><a href="#"><img
                            src="{{ asset('themes/images/partner/9.jpg') }}" alt=""></a>
                </div>
            </div>
    </div>
</div>
@endsection