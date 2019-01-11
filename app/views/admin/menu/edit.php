<div class="add-menuu-container">
    <h3>Edit Menu</h3>
    <form method="post" action="/admin/menu/update">
        <label>Наименование </label><br>
        <input type="text" name="name" value="<?=$menu->name;?>">
        <input type="hidden" name="id" value="<?=$menu->id;?>">
        <input type="submit" value="Сохранить">
    </form>
</div>