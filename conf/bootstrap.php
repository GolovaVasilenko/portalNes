<?php
use core\Routes;

Routes::add('^logout$', ['controller' => 'auth', 'action' => 'logout']);

Routes::add('^login$', ['controller' => 'auth', 'action' => 'login']);

Routes::add('^register$', ['controller' => 'register', 'action' => 'show-form']);

Routes::add('^registeration$', ['controller' => 'register', 'action' => 'registration']);

Routes::add('^(?P<directory>admin)/(?P<controller>[a-zA-Z\-]+)/?(?P<action>[a-zA-Z\-]+)?$');
Routes::add('^(?P<directory>admin)$', ['controller' => 'admin', 'action' => 'index']);
Routes::add('^(?P<controller>page)/?(?P<alias>[a-zA-Z0-9\-]+)?$', ['controller' => 'page', 'action' => 'index']);
Routes::add('^$', ['controller' => 'page', 'action' => 'home']);
Routes::add('^(?P<controller>[a-zA-Z\-]+)/?(?P<action>[a-zA-Z\-]+)?$');