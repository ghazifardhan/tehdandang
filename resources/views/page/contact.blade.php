@extends('layouts.app')
@section('content')
<!--section-->
<div class="ps-section--hero"><img src="{{ asset('themes/images/hero/01.jpg') }}" alt="">
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

<div class="ps-section pt-80 pb-80">
    <div class="container">
        <div class="ps-contact">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                    <div class="ps-contact__info">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63372.92069143742!2d109.70868996640618!3d-6.913600121116579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7024bb2d2b98d3%3A0xa68c84388a108ba0!2sPabrik+Teh+Dandang!5e0!3m2!1sen!2sid!4v1562210178385!5m2!1sen!2sid"
                        width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        <div class="ps-contact__block">
                            <h4>{{ $settings->company_title }}</h4>
                            <p><i class="fa fa-envelope-o"></i>enquiry@tehdandang.com</p>
                            <p><i class="fa fa-phone"></i>+1 650-253-0000</p>
                            <h4>Follow Us</h4>
                            <ul class="ps-contact__social">
                                <li><a href="{{ $settings->facebook_url }}"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="{{ $settings->twitter_url }}"><i class="fa fa-twitter"></i></a></li>
                                <!-- <li><i href="#"><i class="fa fa-rss"></i></i></li> -->
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                    <div class="ps-contact__form">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="First Name">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="email" placeholder="E-mail">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Telephone">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" rows="6" placeholder="Text your message here..."></textarea>
                        </div>
                        <div class="form-group mt-30">
                            <button class="ps-btn ps-btn--sm ps-contact__submit" onclick="alert('Request submitted')">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
