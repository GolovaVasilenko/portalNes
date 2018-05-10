<?php if(\core\Session::getValue('errors')): ?>
    <?php \core\Session::flashErrors();?>
<?php endif; ?>