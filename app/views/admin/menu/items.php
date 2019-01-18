<h2><?=$menu->name;?></h2>
<?php new app\widgets\Menu\MenuWidget($menu_items); ?>
<div class="menu-items nestable-lists">
    <div class="dd" id="nestableMenu">
        <ol class="dd-list"></ol>

    </div>
</div>
