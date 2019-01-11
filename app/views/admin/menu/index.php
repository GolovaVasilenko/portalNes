<div class="menu-container">
    <div class="add-btn"><a class="btn btn-primary" href="/admin/menu/add">Добавить Меню</a></div>
    <?php if(empty($menus)):?>
    <h2>Not found data!</h2>
    <?php else: ?>
    <table class="table">
        <tr>
            <th>#ID</th>
            <th>Наименование Меню</th>
            <th>Удалить</th>
        </tr>
        <?php foreach($menus as $menu):?>
        <tr>
            <td><?=$menu->id?></td>
            <td><?=$menu->name?></td>
            <td><a class="btn btn-danger" href="/admin/menu/delete">Удалить</a></td>
        </tr>
        <?php endforeach;?>
    </table>
    <?php endif;?>
</div>
