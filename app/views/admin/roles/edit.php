<div class="form-container">
    <form method="post" action="/admin/role/update/<?=$role->id;?>">
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="login">Name</label>
                    <input type="text" class="form-control" value="<?=$role->name?>" name="name" id="name">
                </div>
            </div>
            <div class="col">
                <h2>Привилегии</h2>
                <?php if(!empty($permissions)):?>
                    <?php foreach($permissions as $item):?>

                        <p>
                            <input type="checkbox" <?php foreach($activePerm as $ap): if($item->id === $ap->id):?>checked="checked"<?php endif;?><?php endforeach;?> id="<?=$item->id; ?>-<?=$item->name;?>" name="perm[<?=$item->id; ?>]">
                            <label for="<?=$item->id; ?>-<?=$item->name;?>"><?=$item->name;?></label>
                        </p>

                    <?php endforeach;?>
                <?php endif;?>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>