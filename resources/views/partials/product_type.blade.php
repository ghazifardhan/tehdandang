<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
    <div class="ps-section__header">
        <h3 class="ps-section__title ps-section__title--left">{{ $products['title'] }}</h3>
    </div>
    <div class="ps-section__content">
        @foreach($products['data'] as $item)
        <div class="ps-product--list">
            <div class="ps-product__thumbnail"><a class="ps-product__overlay" href="product-detail.html"></a><img
                    src="{{ asset('storage/' . $item->photo_products) }}" alt=""></div>
            <div class="ps-product__content">
                <h4 class="ps-product__title"><a href="#">{{ $item->name }}</a></h4>
                <p>{{ $item->description }}</p>
                <p class="ps-product__price">
                    Rp 15.000
                </p><a class="ps-btn ps-btn--xs" href="#">Order now<i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        @endforeach
    </div>
</div>