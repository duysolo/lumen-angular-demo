<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller;

use App\Models;

abstract class BaseController extends Controller
{
    public function __construct()
    {

    }

    public function viewAdmin($action, $viewName)
    {
        return view('admin.'.$action.'.'.$viewName);
    }
}