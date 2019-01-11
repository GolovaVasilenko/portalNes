<div class="menu-items-container">
    <div class="row">
        <div class="col">
            <?php if(empty($menu_items)):?>
            <h2>Menu items not found!</h2>
            <?php else:?>
                <?php foreach($menu_items as $mi):?>
                <div class="list-item"><?=$mi->label;?></div>
                <?php endforeach;?>
            <?php endif;?>
        </div>
        <div class="col">
            <form action="/admin/menu/store-item" method="post">
                <p><label>Имя</label><br>
                <input name="label" type="text"></p>
                <p><label>Ссылка</label><br>
                <input name="link" type="text"></p>
                <p><label>Позиция</label><br>
                    <input name="position" type="number"></p>

                <input type="submit" value="Сохранить">
            </form>
        </div>
    </div>
</div>