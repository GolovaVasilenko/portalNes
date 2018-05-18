<h2 class="sub-header">Роли для пользователей</h2>
<a href="/admin/role/add" type="button" class="btn btn-info">Добавить Роль</a><br>
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Permissions</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach($roles as $role):?>
            <tr>
                <td><?=$role->id;?></td>

                <td><?=$role->name;?></td>
                <td>
                    <?php foreach($role->getPermissions() as $perm):?>
                         | <?=$perm->name;?> |
                    <?php endforeach;?>
                </td>
                <td>
                    <a href="/admin/role/edit/<?=$role->id;?>">edit</a> |
                    <a href="/admin/role/delete/<?=$role->id;?>">delete</a>
                </td>

            </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>