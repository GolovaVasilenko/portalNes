<h2 class="sub-header">Section Users</h2>
<a href="/admin/user/add" type="button" class="btn btn-info">Добавить нового пользователя</a><br>
<div class="table-responsive">
    <?php if(!empty($users)):?>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Login</th>
            <th>Email</th>
            <th>status</th>
            <th>roles</th>
            <th>actions</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach($users as $user):?>
        <tr>
            <td><?=$user->id;?></td>
            <td><?=$user->login;?></td>
            <td><?=$user->email;?></td>
            <td><?=$user->status;?></td>
            <td>
                <?php foreach($user->getRoles() as $role):?>
                    | <?=$role->name;?> |
                <?php endforeach;?>
            </td>
            <td>
                <a href="/admin/user/edit/<?=$user->id;?>">edit</a> |
                <a href="/admin/user/status/<?=$user->id;?>">
                    <?php if($user->status):?>bun<?php else:?>activate<?php endif;?>
                </a> |
                <a href="/admin/user/delete/<?=$user->id;?>">delete</a>

            </td>
        </tr>
        <?php endforeach;?>
        </tbody>
    </table>
    <?php else:?>
    <p>Данных нет</p>
    <?php endif;?>
</div>

