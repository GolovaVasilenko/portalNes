<?php


namespace app\controllers\admin;


use app\models\Post;

class PostController extends AdminController
{
    public function indexAction()
    {
        $posts = Post::findAll();

        $this->view->render('/admin/posts/index', ['posts' => $posts]);
    }

    public function addAction()
    {
        $this->view->render('/admin/posts/add');
    }
}