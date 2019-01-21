<li class="dd-item" data-id="<?=$category->id?>" data-position="<?=$category->position?>">
    <div class="dd-handle">
    <?=$category->label . ' pos- ' . $category->position;?>
    </div>
    <?php if(isset($category->children)):?>
        <ol class="dd-list">
            <?=$this->getMenuHtml($category->children);?>
        </ol>
    <?php endif;?>
</li>