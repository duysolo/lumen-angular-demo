<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\BaseController;

class ViewController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getView($action, $viewName)
    {
        return $this->viewAdmin($action, $viewName);
    }
}
