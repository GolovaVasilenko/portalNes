<h2 class="sub-header">Edit Page <?=isset($page->title) ? $page->title : '';?></h2>

<div class="form-wrapper">
    <form action="/admin/page/update" method="post">
        <?php require_once "_form.php";?>
    </form>
</div>