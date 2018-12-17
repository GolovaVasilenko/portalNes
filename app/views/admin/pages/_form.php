<div class="form-group">
<label for="page-title">Заголовок страницы</label>
<input id="page-title" class="form-control" name="title" type="text" value="<?=isset($page->title) ? $page->title : '';?>" />
</div>
<div class="form-group">
<label for="page-slug">URL страницы</label>
<input id="page-slug" class="form-control" name="slug" type="text" value="<?=isset($page->slug) ? $page->slug : '';?>" />
</div>
<div class="form-group">
<label for="page-body">Содержимое страницы</label>
<textarea id="page-body" class="form-control" name="body"><?=isset($page->body) ? $page->body : '';?></textarea>
</div>
<hr>
<div class="form-group">
<label for="page-meta-title">META title</label>
<input id="page-meta-title" class="form-control" name="meta_title" type="text" value="<?=isset($page->meta_title) ? $page->meta_title : '';?>" />
</div>
<div class="form-group">
<label for="page-meta-desc">META description</label>
<textarea id="page-meta-desc" name="meta_desc" class="form-control" ><?=isset($page->meta_desc) ? $page->meta_desc : '';?></textarea>
</div>
<input type="hidden" name="id" value="<?=isset($page->id) ? $page->id : '';?>">
<input type="submit" class="btn btn-primary" value="Сохранить">