<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;

use Acme\Helpers as MyHelpers;

use Illuminate\Http\Request;

use App\Models;

class GlobalController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    /*Get timezone list - GET*/
    public function getTimezoneList()
    {
        return response()->json(MyHelpers::getTimezoneList(), 200);
    }

    /*Get country list - GET*/
    public function getCountryList()
    {
        return response()->json(Models\Country::getAllCountries(), 200);
    }

    /*Get city list - GET*/
    public function getCityList()
    {
        return response()->json(Models\City::getAllCity(), 200);
    }

    /*Get page templates - GET*/
    public function getPageTemplates()
    {
        return response()->json(MyHelpers::getPageTemplates(), 200);
    }
}