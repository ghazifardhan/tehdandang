@extends('layouts.app')
@section('content')

<div class="ps-section--hero"><img src="{{ $headerImage }}" alt="">
    <div class="ps-section__content text-center">
        <h3 class="ps-section__title">{{ $menus->title }}</h3>
        <div class="ps-breadcrumb">
        <ol class="breadcrumb">
            <li><a href="{{ url('/') }}">Home</a></li>
            <li class="active">{{ $menus->title }}</li>
        </ol>
        </div>
    </div>
</div>

<div class="ps-section--page">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 col-lg-push-3 col-md-push-3">
                <div class="ps-shop-listing pt-80 pb-40">
                    <!-- <div class="ps-shop-features">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 "><img class="mb-30"
                                    src="images/product-banner/012x.jpg" alt="">
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 "><img class="mb-30"
                                    src="images/product-banner/022x.jpg" alt="">
                            </div>
                        </div>
                    </div> -->
                    <!-- <div class="ps-shop-filter">
                        <div class="row">
                            <div class="col-lg-5 col-md-4 col-sm-4 col-xs-12 ">
                                <div class="form-group">
                                    <label>Short by:</label>
                                    <select class="ps-select" data-placeholder="Popupar product">
                                        <option value="01">Popular products</option>
                                        <option value="01">Item 01</option>
                                        <option value="02">Item 02</option>
                                        <option value="03">Item 03</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-4 col-sm-4 col-xs-12 ">
                                <div class="form-group">
                                    <label>Show:</label>
                                    <select class="ps-select" data-placeholder="Show:">
                                        <option value="01">SHOW</option>
                                        <option value="02">Item 02</option>
                                        <option value="03">Item 03</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 ">
                                <ul class="ps-shop-switch">
                                    <li class="active"><a href="product-listing.html"><i class="fa fa-th"></i></a></li>
                                    <li><a href="product-grid.html"><i class="fa fa-list"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div> -->
                    <div class="ps-shop">
                        @foreach($products as $item)
                        <div class="ps-product--list ps-product--list-large">
                            <div class="ps-product__thumbnail">
                                <a class="ps-product__overlay"
                                    href="{{ asset('storage/' . $item->photo_products[0]) }}">
                                    </a>
                                    <img src="{{ asset('storage/' . $item->photo_products[0]) }}" alt="">
                            </div>
                            <div class="ps-product__content">
                                <h4 class="ps-product__title"><a href="/product/{{ $item->slug }}">{{ $item->name }}</a></h4>
                                <!-- <select class="ps-rating">
                                    <option value="1">1</option>
                                    <option value="1">2</option>
                                    <option value="1">3</option>
                                    <option value="1">4</option>
                                    <option value="5">5</option>
                                </select> -->
                                <!-- <p class="ps-product__price">
                                    <del>£25.00</del>£15.00
                                </p> -->
                                <p>{{ $item->description }}</p>
                                <footer class="ps-product__footer clearfix"><a class="ps-btn ps-btn--sm"
                                        href="/product/{{ $item->slug }}">See Detail<i class="fa fa-angle-right"></i></a>
                                    <!-- <ul class="ps-product__action">
                                        <li><a href="#" data-tooltip="Add to wishlist"><i
                                                    class="ps-icon--heart"></i></a></li>
                                        <li><a href="#" data-tooltip="Compare"><i class="ps-icon--reload"></i></a></li>
                                    </ul> -->
                                </footer>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <!-- <div class="ps-pagination">
                        <ul class="pagination">
                            <li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#"><i class="fa fa-arrow-right"></i></a></li>
                        </ul>
                    </div> -->
                </div>
            </div>

            <!-- Sidebar -->
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-lg-pull-9 col-md-pull-9">
                <div class="ps-sidebar">
                    <!-- <aside class="ps-widget ps-widget--sidebar ps-widget--search">
                        <form method="post" action="">
                            <input class="form-control" type="text" placeholder="Type here bakery name...">
                            <button type="submit"><i class="ps-icon--search"></i></button>
                        </form>
                    </aside> -->
                    <aside class="ps-widget ps-widget--sidebar ps-widget--category">
                        <div class="ps-widget__header">
                            <h3 class="ps-widget__title">CATEGORY</h3>
                        </div>
                        <div class="ps-widget__content">
                            <ul class="ps-list--circle">
                                @if($menus->slug == "teh-dandang-taburbubuk")
                                <li class="current"><a href="/menu/teh-dandang-taburbubuk"><span class="circle"></span>Teh Dandang Tabur/Bubuk</a></li>
                                @else
                                <li><a href="/menu/teh-dandang-taburbubuk"><span class="circle"></span>Teh Dandang Tabur/Bubuk</a></li>
                                @endif

                                @if($menus->slug == "teh-dandang-bag")
                                <li class="current"><a href="/menu/teh-dandang-bag"><span class="circle"></span>Teh Dandang Bag</a></li>
                                @else
                                <li><a href="/menu/teh-dandang-bag"><span class="circle"></span>Teh Dandang Bag</a></li>
                                @endif
                                <!-- <li><a href="product-listing.html"><span class="circle"></span>Amazin’ Glazin’</a></li>
                                <li><a href="product-listing.html"><span class="circle"></span>The Crusty Croissant</a>
                                </li>
                                <li><a href="product-listing.html"><span class="circle"></span>The Rolling Pin</a></li>
                                <li><a href="product-listing.html"><span class="circle"></span>Skippity Scones</a></li>
                                <li><a href="product-listing.html"><span class="circle"></span>Mad Batter</a></li>
                                <li><a href="product-listing.html"><span class="circle"></span>Confection Connection</a>
                                </li> -->
                            </ul>
                        </div>
                    </aside>
                    <!-- <aside class="ps-widget ps-widget--sidebar ps-widget--filter">
                        <div class="ps-widget__header">
                            <h3 class="ps-widget__title">Fillter Prices</h3>
                        </div>
                        <div class="ps-widget__content">
                            <div class="ac-slider" data-default-min="300" data-default-max="2000" data-max="3450"
                                data-step="50" data-unit="$"></div>
                            <p class="ac-slider__meta">Price:<span class="ac-slider__value ac-slider__min"></span>-<span
                                    class="ac-slider__value ac-slider__max"></span></p><a
                                class="ac-slider__filter ps-btn ps-btn--xs" href="#">Filter</a>
                        </div>
                    </aside>
                    <aside class="ps-widget ps-widget--sidebar ps-widget--ads">
                        <div class="ps-widget__header">
                            <h3 class="ps-widget__title">Ads Banner</h3>
                        </div>
                        <div class="ps-widget__content"><img src="images/widget/banner2x.png" alt=""></div>
                    </aside>
                    <aside class="ps-widget ps-widget--sidebar ps-widget--best-seller">
                        <div class="ps-widget__header">
                            <h3 class="ps-widget__title">Best seller</h3>
                        </div>
                        <div class="ps-widget__content">
                            <div class="ps-product--sidebar">
                                <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                        href="product-detail.html"></a><img src="images/cake/img-cake-12.jpg" alt="">
                                </div>
                                <div class="ps-product__content">
                                    <h4 class="ps-product__title"><a href="product-detail.html">Amazin’ Glazin’</a></h4>
                                    <p class="ps-product__price">
                                        <del>£25.00</del>£15.00
                                    </p><a class="ps-btn ps-btn--xs" href="product-detail.html">Purchase</a>
                                </div>
                            </div>
                            <div class="ps-product--sidebar">
                                <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                        href="product-detail.html"></a><img src="images/cake/img-cake-3.jpg" alt="">
                                </div>
                                <div class="ps-product__content">
                                    <h4 class="ps-product__title"><a href="product-detail.html">The Crusty Croissant</a>
                                    </h4>
                                    <p class="ps-product__price">
                                        <del>£25.00</del>£15.00
                                    </p><a class="ps-btn ps-btn--xs" href="product-detail.html">Purchase</a>
                                </div>
                            </div>
                            <div class="ps-product--sidebar">
                                <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                        href="product-detail.html"></a><img src="images/cake/img-cake-7.jpg" alt="">
                                </div>
                                <div class="ps-product__content">
                                    <h4 class="ps-product__title"><a href="product-detail.html">The Rolling Pin</a></h4>
                                    <p class="ps-product__price">
                                        <del>£25.00</del>£15.00
                                    </p><a class="ps-btn ps-btn--xs" href="product-detail.html">Purchase</a>
                                </div>
                            </div>
                        </div>
                    </aside>
                    <aside class="ps-widget ps-widget--sidebar ps-widget--tags">
                        <div class="ps-widget__header">
                            <h3 class="ps-widget__title">TAGS</h3>
                        </div>
                        <div class="ps-widget__content">
                            <ul class="ps-tags">
                                <li><a href="#">Cupcake</a></li>
                                <li><a href="#">vanila</a></li>
                                <li><a href="#">sugar flower</a></li>
                                <li><a href="#">vanila</a></li>
                                <li><a href="#">coconut</a></li>
                                <li><a href="#">vanila</a></li>
                            </ul>
                        </div>
                    </aside> -->
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
