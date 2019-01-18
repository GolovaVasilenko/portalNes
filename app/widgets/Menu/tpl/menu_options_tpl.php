<option value="<?=$category->id;?>"><?=$category->label?></option>
<?php if(isset($category->children)):?>

    <?=$this->getMenuHtml($category->children);?>

<?php endif;?>