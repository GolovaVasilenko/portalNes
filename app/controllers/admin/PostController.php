<?php


namespace app\controllers\admin;


use app\models\Post;
use core\Session;

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

    public function createAction()
    {
        $postModel = new Post();
        $postModel->dataInit($this->request->ispost());
        $postModel->save();

        Session::sessionInit('success', ['Новая статья успешно создана']);
        $this->redirect('/admin/post');
    }
}