@if(!empty($promos))
<div class="mfp-with-anim modal-popup mfp-hide" id="modal--subscribe">
    <button class="modal-close"><i class="fa fa-remove"></i></button><img src="{{ asset('storage/' . $promos->image) }}" alt="">
    <form action="_action" method="post">   
    <h3>{{ $promos->title }}</h3>
    <p>{!! $promos->description !!}</p>
    <!-- <div class="form-group">
        <input class="form-control" type="text" placeholder="Type your email...">
        <button class="ps-btn ps-btn--sm">Subscribe</button>
    </div> -->
    </form>
</div>
@endif