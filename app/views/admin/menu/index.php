<div class="menu-container">
    <div class="add-btn"><a class="btn btn-primary" href="/admin/menu/add">Добавить Меню</a></div>
    <?php if(empty($menus)):?>
    <h2>Not found data!</h2>
    <?php else: ?>
    <table class="table">
        <tr>
            <th>#ID</th>
            <th>Наименование Меню</th>
            <th>Действия</th>
            <th>Действия</th>
            <th>Действия</th>
        </tr>
        <?php foreach($menus as $menu):?>
        <tr>
            <td><?=$menu->id?></td>
            <td><?=$menu->name?></td>
            <td>
                <a class="btn btn-primary" href="/admin/menu/items/<?=$menu->id?>">Элементы меню</a>
            </td>
            <td>
                <a class="btn btn-success" href="/admin/menu/add-item/<?=$menu->id?>">Добавить Элемент Меню</a>
            </td>
            <td>
                <a class="btn btn-primary" href="/admin/menu/edit/<?=$menu->id?>">Редактировать</a>
            </td>
            <td>
                <a class="btn btn-danger remove-item-js" href="/admin/menu/delete/<?=$menu->id?>">Удалить Меню</a>
            </td>
        </tr>
        <?php endforeach;?>
    </table>
    <?php endif;?>
</div>
