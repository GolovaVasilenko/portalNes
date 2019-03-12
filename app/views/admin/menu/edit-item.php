<div class="menu-items-container">
    <div class="row">
        <form id="form-items-menu" action="/admin/menu/update-item" method="post">
            <div class="form-group">
                <p><label>Родительский элемент</label><br>
                    <select name="parent_id" type="text" class="form-control">
                        <option value="0">Корневой элемент</option>

                        <?php new app\widgets\Menu\MenuWidget($menu_items, ['tpl' => 'tpl/menu_options_tpl.php']);?>
                    </select>
                </p>
                <p><label>Имя</label><br>
                    <input name="label" type="text" value="<?=$item->label;?>" class="form-control"></p>
                <p><label>Ссылка</label><br>
                    <input name="link" type="text" value="<?=$item->link;?>" class="form-control"></p>
                <p><label>Позиция</label><br>
                    <input name="position" type="number" value="<?=$item->position;?>" class="form-control"></p>
                <input type="hidden" name="menu_id" value="<?=$menu_id;?>">
                <input type="hidden" name="id" value="<?=$item->id;?>">
                <input class="btn btn-success" type="submit" value="Сохранить">
            </div>
        </form>
    </div>
</div>