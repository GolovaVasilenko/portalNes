<div class="form-container">
    <form method="post" action="/admin/role/store">
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="login">Name</label>
                    <input type="text" class="form-control" name="name" id="name">
                </div>
            </div>
            <div class="col">
                <h2>Привилегии</h2>
                <?php if(!empty($permissions)):?>
                    <?php foreach($permissions as $item):?>
                    <p>
                        <input type="checkbox" id="<?=$item->id; ?>-<?=$item->name;?>" name="perm[<?=$item->id; ?>]">
                        <label for="<?=$item->id; ?>-<?=$item->name;?>"><?=$item->name;?></label>
                    </p>
                    <?php endforeach;?>
                <?php endif;?>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>