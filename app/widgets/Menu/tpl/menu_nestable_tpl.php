<li class="dd-item" data-id="<?=$category->id;?>" data-position="<?=$category->position?>">
    <div class="dd-handle">
    <?=$category->label;?>
    </div>
    <div class="action-item-container">
        <a href="/admin/menu/edit-item/<?=$category->id?>"><i class="fa fa-edit"></i></a>&nbsp;
        <a class="remove-item-js" href="/admin/menu/delete-item/<?=$category->id?>"><i class="fa fa-times"></i></a>
    </div>
    <?php if(isset($category->children)):?>
        <ol class="dd-list">
            <?=$this->getMenuHtml($category->children);?>
        </ol>
    <?php endif;?>
</li>