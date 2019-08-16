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

<section class="ps-section ps-section--best-seller pt-40 pb-100">
    <div class="container">
        <div class="row">
            <div class="ps-section__header text-center mb-50">
                <h4 class="ps-section__top">Teh Dandang</h4>
                <h3 class="ps-section__title ps-section__title--full">{{ $menus->title }}</h3>
            </div>
                
            <div class="ps-section__content">
                @if($menus->is_static)
                {!! $menus->content !!}
                @else
                <p>No matter how far along you are in your sophistication as an amateur astronomer, there is always one fundamental moment that we all go back to. That is that very first moment that we went out where you could really see the cosmos well and you took in the night sky. For city dwellers, this is a revelation as profound as if we discovered aliens living among us. Most of us have no idea the vast panorama of lights that dot a clear night sky when there are no city lights to interfere with the view.</p>
                    <blockquote>
                        <p><i>It seems from the moment you begin to take your love of astronomy seriously, the thing that is on your mind is what kind of telescope will you get. And there is no question, investing in a good telescope can really enhance your enjoyment of your new passion in astronomy.</i></p>
                        <p>Rodney Cannon</p>
                    </blockquote>
                <p>In the history of modern astronomy, there is probably no one greater leap forward than the building and launch of the space telescope known as the Hubble. While NASA has had many ups and downs, the launch and continued operation of the Hubble space telescope probably ranks next to the moon landings and the development of the Space Shuttle as one of the greatest space exploration accomplishments of the last hundred years.</p>
                @endif
            </div>
        </div>
    </div>
</section>

@endsection