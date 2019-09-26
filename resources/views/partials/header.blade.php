<header class="header" data-responsive="1199" style="background-color: white;">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div style="width: 100%;height: 40px;display: flex; justify-content: flex-end; align-items: center;">
                    <a href="{{ $settings->facebook_url }}"><i class="fa fa-facebook" style="margin-right: 25px; font-size: 18px;"></i></a>
                    <a href="{{ $settings->google_plus_url }}"><i class="fa fa-google" style="margin-right: 25px; font-size: 18px;"></i></a>
                    <a href="{{ $settings->twitter_url }}"><i class="fa fa-twitter" style="margin-right: 25px; font-size: 18px;"></i></a>
                    <a href="{{ $settings->instagram_url }}"><i class="fa fa-instagram" style="margin-right: 25px; font-size: 18px;"></i></a>
                </div>
            </div>
        </div>
    </div>

    @include('partials.nav')
</header>
