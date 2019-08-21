@extends('layouts.app')
@section('content')

@include('partials.banner', ['banners' => $banners])

{{--
@include('partials.bestsellers', ['bestsellers' => $bestsellers])
--}}

{{--
<section class="ps-section ps-section--best-seller pt-40 pb-100">
    <div class="container">
        <div class="row">
            <div class="ps-section__header text-center mb-50">
                <h4 class="ps-section__top">Teh Dandang</h4>
                <h3 class="ps-section__title ps-section__title--full">Video Profile Teh Dandang</h3>
            </div>
                
            <div class="ps-section__content">
                <iframe width="560" height="560" src="https://www.youtube.com/embed/jbox3FKM4vM" frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            </div>
        </div>
    </div>
</section>
--}}

{{--
<section class="ps-section ps-section--list-product pt-40 pb-80">
    <div class="container">
        <div class="row">
            <!-- Product Type -->
            @include('partials.product_type', ['products' => $tubruks])
            @include('partials.product_type', ['products' => $bubuks])
        </div>
    </div>
</section>
--}}



<section class="ps-section ps-section--team ps-section--pattern pt-40 pb-80">
    <div class="container">
        <div class="row">
            <div class="ps-section__header text-center mb-50">
                <h4 class="ps-section__top">Best Quality</h4>
                <h3 class="ps-section__title ps-section__title--full">About Us</h3>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                <div class="ps-section__content">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">
                            <article class="ps-people">
                                <div class="ps-people__thumbnail"><a class="ps-people__overlay" href="/menu/what-we-are-from"></a><img
                                        src="{{ asset('themes/images/about/about-1.jpg') }}" alt=""></div>
                                <div class="ps-people__content">
                                    <h4>What We Are From</h4>
                                </div>
                            </article>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">
                            <article class="ps-people">
                                <div class="ps-people__thumbnail"><a class="ps-people__overlay" href="/menu/what-we-are"></a><img
                                        src="{{ asset('themes/images/about/about-2.jpg') }}" alt=""></div>
                                <div class="ps-people__content">
                                    <h4>What We Are</h4>
                                </div>
                            </article>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">
                            <article class="ps-people">
                                <div class="ps-people__thumbnail"><a class="ps-people__overlay" href="/menu/what-we-serve"></a><img
                                        src="{{ asset('themes/images/about/about-3.jpg') }}" alt=""></div>
                                <div class="ps-people__content">
                                    <h4>What We Serve</h4>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ps-section ps-section--best-seller pt-40 pb-100">
    <div class="container">
        <div class="row">
            <div class="ps-section__header text-center mb-50">
                <h4 class="ps-section__top">Teh Dandang</h4>
                <h3 class="ps-section__title ps-section__title--full">Our Product</h3>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                <div class="ps-section__content">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                            <article class="ps-people">
                                <div class="ps-people__thumbnail">
                                    <a class="ps-people__overlay" href="/menu/teh-dandang-taburtubruk"></a>
                                    <img src="{{ asset('themes/images/product-celup.png') }}" alt="">
                                </div>
                            </article>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                            <article class="ps-people">
                                <div class="ps-people__thumbnail">
                                    <a class="ps-people__overlay" href="/menu/teh-dandang-bag"></a>
                                    <img src="{{ asset('themes/images/product-tubruk.png') }}" alt="">
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@include('partials.video')

<section class="ps-section ps-section--best-seller pt-40 pb-100">
    <div class="container">
        <div class="row">
            <div class="ps-section__header text-center mb-50">
                <h4 class="ps-section__top">Our Story</h4>
                <h3 class="ps-section__title ps-section__title--full">Teh Dandang</h3>
            </div>
                
            <div class="ps-section__content">
                <video 
                    class="custom-video"
                    controls 
                    loop>
                    <source src="{{ asset('assets/video/teh_dandang_gula_cair.mp4') }}" type="video/mp4">
                    Your browser does not support HTML5 video.
                </video>
            </div>
        </div>
    </div>
</section>

<div class="ps-section ps-section--news ps-section--pattern pt-40 pb-40">
    <div class="container">
        <div class="row">
            <div class="ps-section__header text-center mb-50">
                <h4 class="ps-section__top">Teh Dandang</h4>
                <h3 class="ps-section__title ps-section__title--full">OFFICIAL STORE TEH DANDANG</h3>
            </div>
            <div class="owl-slider"
                data-owl-auto="true" 
                data-owl-loop="true" 
                data-owl-speed="10000" 
                data-owl-center="true"
                data-owl-nav="false" 
                data-owl-dots="false" 
                data-owl-animate-in="" 
                data-owl-animate-out="" 
                data-owl-item="4"
                data-owl-item-xs="4" 
                data-owl-item-sm="4" 
                data-owl-item-md="4" 
                data-owl-item-lg="4"
                data-owl-nav-left="&lt;i class=&quot;fa fa-angle-left&quot;&gt;&lt;/i&gt;"
                data-owl-nav-right="&lt;i class=&quot;fa fa-angle-right&quot;&gt;&lt;/i&gt;">
                    @foreach($officialStores as $item)
                    <a 
                        href="{{ url($item->url) }}" 
                        target="_blank"
                        style="display: flex; flex: 1; justify-content: center; align-items: center;height: 100px;">
                        <img 
                            src="{{ asset('storage/' . $item->image) }}" 
                            class="grayscale-logo" 
                            alt=""
                            style="width: 150px;">
                    </a>
                    @endforeach
            </div>
        </div>
    </div>
</div>

<section class="ps-section ps-section--subscribe pt-80 pb-80">
    <div class="container">
        <div class="ps-subscribe">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <h3>
                        <font color="white">{{ $settings->company_title }}</font>
                    </h3>
                    <p>{{ $settings->company_description }}</p>
                    <p class="text-uppercase ps-subscribe__highlight">{{ $settings->address }}</p>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12 ">
                </div>
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 ">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63372.92069143742!2d109.70868996640618!3d-6.913600121116579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7024bb2d2b98d3%3A0xa68c84388a108ba0!2sPabrik+Teh+Dandang!5e0!3m2!1sen!2sid!4v1562210178385!5m2!1sen!2sid"
                        width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>

            </div>
        </div>
    </div>
</section>

@endsection

@section('popup')
<!-- Newsletter -->
@include('partials.promo')
@endsection
