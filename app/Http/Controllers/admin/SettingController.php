<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\BaseController;

use App\Models\Setting;

use Acme\Helpers as MyHelpers;

use Illuminate\Http\Request;

class SettingController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    /*
     * RESTFul web service
     */
    /*Get all - GET*/
    public function index()
    {
        $settings = Setting::getAllSettings();
        $results = [];
        foreach($settings as $key => $row)
        {
            $results[$row->option_key] = $row;
        }
        return response()->json($results);
    }

    /*Update all - POST*/
    public function update(Request $request)
    {
        $data = [];
        $data['error'] = true;
        $data['list'] = Setting::updateSettings($request->all());

        $errorCode = 500;

        if(!$data['list'])
        {
            $data['error'] = false;
            $errorCode = 200;
        }
        return response()->json($data, $errorCode);
    }
}