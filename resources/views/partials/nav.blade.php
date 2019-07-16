<nav class="navigation">
    <div class="container">
        <div class="menu-toggle"><span></span></div>
        <div class="navigation__left">
            <a href=""><img src="{{ asset('themes/images/logo-dandang.png') }}" alt=""></a>
            <a href="/">Home</a>
        </div>

        <div class="navigation__right">
            <!-- <ul class="menu menu--left">
                  
                </ul> -->
            <ul class="menu menu--right">
                <?php
                    $parents = \App\Menu::where('parent_id', 0)->orderBy('order', 'ASC')->get();
                    foreach ($parents as $menu):
                        getMenuChild($menu, $menu->id);
                    endforeach;
                    function getMenuChild($menu, $id = 0) {
                        $menus = \App\Menu::where('parent_id', $id)->orderBy('order', 'ASC')->get();
                        $parent = \App\Menu::where('id', $id)->first();
                ?>
                @if (sizeof($menus) > 0)
                <li class="menu-item-has-children">
                    <a href="{{ route('menu.index', $menu->slug) }}">{{ $menu->title }}</a>
                    <ul class="sub-menu">
                        <?php 
                        foreach($menus as $item):
                            getMenuChild($item, $item->id);
                        endforeach;
                        ?>
                    </ul>
                </li>
                @else
                <li>
                    <a href="{{ route('menu.index', $menu->slug) }}">{{ $menu->title }}</a>
                </li>
                @endif
                <?php } ?>
            </ul>
        </div>
    </div>
</nav>