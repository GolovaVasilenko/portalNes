<option value="<?=$category->id;?>" <?php if($this->selected == $category->id){echo "selected";}?>><?=$category->label . " " . $this->selected;?></option>
<?php if(isset($category->children)):?>

    <?=$this->getMenuHtml($category->children);?>

<?php endif;?>
