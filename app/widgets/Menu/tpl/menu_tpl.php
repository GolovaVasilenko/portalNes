<li>
    <?=$category->label?>
    <?php if(isset($category->children)):?>
        <ul>
            <?=$this->getMenuHtml($category->children);?>
        </ul>
    <?php endif;?>
</li>