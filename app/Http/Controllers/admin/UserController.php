<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\BaseController;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    /*
     * RESTFul web service
     */
    /*Get all - GET*/
    public function index(Request $request)
    {
        return response()->json(User::getAllUsers($request));
    }
    /*Create new one - POST*/
    public function create(Request $request)
    {
        $user = new User();
        return response()->json($user->createUser($request, $user));
    }
    /*Get one by parameters - GET*/
    public function show($id)
    {
        return response()->json(User::getUserById($id));
    }
    /*Edit one by parameters - POST*/
    public function edit(Request $request, $id)
    {
        $user = User::getUserById($id);
        $attr = [];
        $attr['firstname'] = $request->get('first_name');
        $attr['lastname'] = $request->get('last_name');

        return response()->json(User::updateUser($user, $attr));
    }
    /*Delete - POST*/
    public function destroy(Request $request, $id)
    {

    }

    /*Authenticate*/
    public function authenticate(Request $request)
    {
        $user = User::getUserByUsername($request->get('username'));

        if(!$user)
        {
            return response()->json([
                'error' => true,
                'message' => 'Username does not exists.'
            ], 401);
        }

        $password = $user->password;
        if(\Hash::check($request->get('password'), $password))
        {
            return response()->json([
                'error' => false,
                'message' => 'Successful'
            ], 200);
        }
        return response()->json([
            'error' => true,
            'message' => 'Password does not match.'
        ], 401);
    }
}