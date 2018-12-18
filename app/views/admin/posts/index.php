<h2 class="sub-header">Posts List</h2>
<a href="/admin/post/add" type="button" class="btn btn-info">Добавить новую статью</a><br>
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Заголовок статьи</th>
            <th>URL</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php if(!empty($posts)):?>
            <?php foreach($posts as $post):?>
                <tr>
                    <td><?=$post->id;?></td>
                    <td><?=$post->title;?></td>
                    <td><?=$post->slug;?></td>
                    <td>
                        <a class="btn btn-primary" href="/admin/page/edit/<?=$post->id;?>">edit</a>
                        <a class="btn btn-danger" onclick="removeItem(event)" href="/admin/page/delete/<?=$post->id;?>">delete</a>
                    </td>
                </tr>
            <?php endforeach;?>
        <?php else:?>
            <p>Данных нет</p>
        <?php endif;?>
        </tbody>
    </table>
</div>
<script>
    function removeItem(e)
    {
        if(!confirm("Вы уверены в том что хотите удалить данный элемент?")) {
            e.preventDefault();
        }
    }
</script>