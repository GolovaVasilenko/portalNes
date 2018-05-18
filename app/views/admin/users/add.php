<div class="form-container">
    <form method="post" action="/admin/user/store">
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="login">Login</label>
                    <input type="text" class="form-control" name="login" id="login" placeholder="">
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="">
                </div>
                <div class="form-group">
                    <label for="password_confirm">Password Confirm</label>
                    <input type="password" class="form-control" name="password_confirm" id="password_confirm" placeholder="">
                </div>
            </div>
            <div class="col">
                <h2>Роли</h2>
                <?php foreach($roles as $role):?>
                    <p>
                        <input type="checkbox" name="roles[<?=$role->id;?>]" value="1">
                        <label for="<?=$role->id;?>-<?=$role->name;?>"><?=$role->name;?></label>
                    </p>
                <?php endforeach;?>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>