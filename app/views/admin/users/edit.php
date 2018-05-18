<div class="form-container">
    <form method="post" action="/admin/user/update/<?=$user->id?>">
        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" class="form-control" name="login" id="login" value="<?=$user->login;?>" placeholder="">
            <input type="hidden" name="id" value="<?=$user->id;?>"
        </div>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control" name="email" id="email" value="<?=$user->email;?>" placeholder="">
        </div>
        <p>
            <label for="email">Активен</label>
            <input type="checkbox" name="status" value="1" <?php if($user->status): ?>checked="checked"<?php endif;?>>
        </p>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>