<section class="ps-section ps-section--best-seller pt-40 pb-100">
    <div class="container">
        <div class="ps-section__header text-center mb-50">
            <h4 class="ps-section__top">Products</h4>
            <h3 class="ps-section__title ps-section__title--full">BEST SELLER</h3>
        </div>
        <div class="ps-section__content">
            <div class="owl-slider owl-slider--best-seller" data-owl-auto="true" data-owl-loop="true"
                data-owl-speed="5000" data-owl-gap="30" data-owl-nav="true" data-owl-dots="false" data-owl-animate-in=""
                data-owl-animate-out="" data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="2" data-owl-item-md="3"
                data-owl-item-lg="4" data-owl-nav-left="&lt;i class=&quot;ps-icon--back&quot;&gt;&lt;/i&gt;"
                data-owl-nav-right="&lt;i class=&quot;ps-icon--next&quot;&gt;&lt;/i&gt;">
                @foreach($bestsellers as $item)
                <div class="ps-product">
                    <div class="ps-product__thumbnail">
                        <a class="ps-product__overlay" href="/product/{{ $item->slug }}"></a><img
                            src="{{ asset('storage/' . $item->photo_products)  }}" alt="">
                    </div>
                    <div class="ps-product__content">
                        <a class="ps-product__title" href="/product/{{ $item->slug }}">
                            {{ $item->name }}
                        </a>
                        <div class="ps-product__category">
                            <a class="ps-product__category" href="#">
                                {{ $item->description }}
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>