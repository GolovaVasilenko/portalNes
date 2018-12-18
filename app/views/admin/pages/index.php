<h2 class="sub-header">Pages List</h2>
<a href="/admin/page/add" type="button" class="btn btn-info">Добавить новую страницу</a><br>
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Заголовок страницы</th>
            <th>URL</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
            <?php if(!empty($pages)):?>
            <?php foreach($pages as $page):?>
            <tr>
                <td><?=$page->id;?></td>
                <td><?=$page->title;?></td>
                <td><?=$page->slug;?></td>
                <td>
                    <a class="btn btn-primary" href="/admin/page/edit/<?=$page->id;?>">edit</a>
                    <a class="btn btn-danger" onclick="removeItem(event)" href="/admin/page/delete/<?=$page->id;?>">delete</a>
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