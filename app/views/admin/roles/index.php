<h2 class="sub-header">Роли для пользователей</h2>
<a href="/admin/permission/add" type="button" class="btn btn-info">Добавить привилегию</a><br>
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach($roles as $role):?>
            <tr>
                <td><?=$role->id;?></td>
                <td><?=$role->name;?></td>
                <td>
                    <a href="/admin/role/delete/<?=$role->id;?>">delete</a>
                </td>

            </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>