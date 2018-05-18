<div class="form-container">
    <form method="post" action="/admin/user/update/<?=$user->id?>">
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="login">Login</label>
                    <input type="text" class="form-control" name="login" id="login" value="<?=$user->login;?>" placeholder="">
                    <input type="hidden" name="id" value="<?=$user->id;?>">
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" name="email" id="email" value="<?=$user->email;?>" placeholder="">
                </div>
                <p>
                    <label for="email">Активен</label>
                    <input type="checkbox" name="status" value="1" <?php if($user->status): ?>checked="checked"<?php endif;?>>
                </p>
            </div>
            <div class="col">
                <h2>Роли</h2>
                <?php foreach($roles as $role):?>
                    <p>
                        <input type="checkbox" name="roles[<?=$role->id;?>]" value="1" <?php foreach($activeRoles as $ar): if($role->id === $ar->id):?>checked="checked"<?php endif; endforeach;?>>
                        <label for="<?=$role->id;?>-<?=$role->name;?>"><?=$role->name;?></label>
                    </p>
                <?php endforeach;?>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>