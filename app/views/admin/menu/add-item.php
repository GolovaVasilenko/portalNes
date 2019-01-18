<div class="menu-items-container">
    <div class="row">
        <div class="col">
            <?php if(empty($menu_items)):?>
            <h2>Menu items not found!</h2>
            <?php else:?>
                <?php new app\widgets\Menu\MenuWidget($menu_items);?>
            <?php endif;?>
        </div>
        <div class="col">
            <form action="/admin/menu/store-item" method="post">
                <div class="form-group">
                <p><label>Родительский элемент</label><br>
                    <select name="parent_id" type="text" class="form-control">
                        <option value="0">Корневой элемент</option>
                        <?php new app\widgets\Menu\MenuWidget($menu_items, ['tpl' => 'tpl/menu_options_tpl.php']);?>
                    </select>
                </p>
                <p><label>Имя</label><br>
                <input name="label" type="text" class="form-control"></p>
                <p><label>Ссылка</label><br>
                <input name="link" type="text" class="form-control"></p>
                <p><label>Позиция</label><br>
                    <input name="position" type="number" class="form-control"></p>
                <input type="hidden" name="menu_id" value="<?=$menu_id;?>">
                <input class="btn btn-success" type="submit" value="Сохранить">
                </div>
            </form>
        </div>
    </div>
</div>