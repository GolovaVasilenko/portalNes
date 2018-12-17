<?php if(\core\Session::getValue('errors')): ?>
    <?php \core\Session::flashErrors();?>
<?php endif; ?>
<?php if(\core\Session::getValue('success')): ?>
    <?php \core\Session::flashSuccess();?>
<?php endif; ?>
