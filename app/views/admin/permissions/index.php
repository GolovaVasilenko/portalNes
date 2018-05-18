<h2 class="sub-header">Привилегии для пользователей</h2>
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
        <?php foreach($permissions as $perm):?>
        <tr>
            <td><?=$perm->id;?></td>
            <td><?=$perm->name;?></td>
            <td>
                <a href="/admin/permission/edit/<?=$perm->id;?>">edit</a> |
                <a href="/admin/permission/delete/<?=$perm->id;?>">delete</a>
            </td>

        </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>