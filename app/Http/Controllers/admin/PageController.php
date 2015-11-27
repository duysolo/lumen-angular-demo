<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\BaseController;

use App\Models\Page;

use Acme\Helpers as MyHelpers;

use Illuminate\Http\Request;

class PageController extends BaseController
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
        return response()->json(Page::getAllPages());
    }

    /*Get one by parameters - GET*/
    public function show($id)
    {
        return response()->json(Page::getPageById($id));
    }

    /*Edit - PUT*/
    public function edit(Request $request, $id)
    {
        $errorCode = 500;
        $data = Page::updatePage($id, $request->all());
        if(!$data['error'])
        {
            $errorCode = 200;
        }
        return response()->json($data, $errorCode);
    }
    public function multiEdit(Request $request)
    {
        $errorCode = 500;
        $ids = $request->get('ids');
        $data = $request->get('data');
        $result = Page::updatePages($ids, $data);
        if(!$result['error'])
        {
            $errorCode = 200;
        }
        return response()->json($result, $errorCode);
    }

    /*Create - POST*/
    public function create(Request $request)
    {
        $errorCode = 500;
        $data = Page::updatePage(0, $request->all());
        if(!$data['error'])
        {
            $errorCode = 200;
        }
        return response()->json($data, $errorCode);
    }

    /*Delete - DELETE*/
    public function destroy(Request $request)
    {
        $errorCode = 500;
        $ids = $request->get('ids');
        $data = Page::deletePage($ids);
        if(!$data['error'])
        {
            $errorCode = 204;
        }
        return response()->json($data, $errorCode);
    }
}