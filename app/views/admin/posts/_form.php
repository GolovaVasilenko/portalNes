<div class="form-group">
    <label for="page-title">Заголовок статьи</label>
    <input id="page-title" class="form-control" name="title" type="text" value="<?=isset($post->title) ? $post->title : '';?>" />
</div>
<div class="form-group">
    <label for="page-slug">URL статьи</label>
    <input id="page-slug" class="form-control" name="slug" type="text" value="<?=isset($post->slug) ? $post->slug : '';?>" />
</div>
<div class="form-group">
    <label for="page-body">Содержимое статьи</label>
    <textarea id="page-body" class="form-control" name="body"><?=isset($post->body) ? $post->body : '';?></textarea>
</div>
<br>
<hr>
<input type="file" name="image" value="Upload Image">
<hr>
<div class="form-group">
    <label for="page-meta-title">META title</label>
    <input id="page-meta-title" class="form-control" name="meta_title" type="text" value="<?=isset($post->meta_title) ? $post->meta_title : '';?>" />
</div>
<div class="form-group">
    <label for="page-meta-desc">META description</label>
    <textarea id="page-meta-desc" name="meta_desc" class="form-control" ><?=isset($post->meta_desc) ? $post->meta_desc : '';?></textarea>
</div>
<input type="hidden" name="id" value="<?=isset($post->id) ? $post->id : '';?>">
<input type="submit" class="btn btn-primary" value="Сохранить">