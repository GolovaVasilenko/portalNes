<h2 class="sub-header">Section Users</h2>
<div class="table-responsive">
    <?php if(!empty($users)):?>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Login</th>
            <th>Email</th>
            <th>status</th>
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
            <td><a href="#">edit</a> <a href="#">delete</a></td>
        </tr>
        <?php endforeach;?>
        </tbody>
    </table>
    <?php else:?>
    <p>Данных нет</p>
    <?php endif;?>
</div>

