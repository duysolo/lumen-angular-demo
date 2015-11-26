<?php
namespace App\Models;

use App\Models\AbstractModel;

class User extends AbstractModel
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'users';

    protected $primaryKey = 'id';

    public static function getAllUsers()
    {
        return static::get();
    }

    public static function getUserById($id)
    {
        $user = static::where('id', '=', $id)->first();
        return $user;
    }

    public static function getUserByUsername($username)
    {
        $user = static::where('username', '=', $username)->first();
        return $user;
    }

    public static function createUser($request)
    {
        $result = [
            'status' => false,
            'message' => 'User has not been created.'
        ];
        $user = new static;
        $user->username = $request->get('username');
        $user->password = Hash::make($request->get('password'));
        $user->firstname = $request->get('first_name');
        $user->lastname = $request->get('last_name');
        $user->email = $request->get('email');
        $result['status'] = $user->save();
        if($result['status'])
        {
            $result['message'] = 'User has been created.';
        }
        return $result;
    }

    public static function updateUser($user, $attributes = [])
    {
        return $user->update($attributes);
    }

    public static function deleteUser($id)
    {
        if(is_array($id) && $id)
        {
            return static::whereIn('id', $id)->delete();
        }
        return static::where('id', '=', $id)->delete();
    }
}