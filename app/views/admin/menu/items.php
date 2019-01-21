<h2><?=$menu->name;?></h2>

<div id="menu-tree" class="menu-items nestable-lists">
    <div class="dd" id="nestable">
        <?php new app\widgets\Menu\MenuWidget($menu_items, ['container'=>'ol', 'class'=>'dd-list', 'tpl' => 'tpl/menu_nestable_tpl.php']); ?>

    </div>
</div>
