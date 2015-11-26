<?php
namespace App\Models;

use App\Models\AbstractModel;

class Setting extends AbstractModel
{
    private static $acceptableEdit = [
        'title',
        'option_key',
        'option_value'
    ];
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'settings';

    protected $primaryKey = 'id';

    public static function getAllSettings()
    {
        return static::select('title', 'option_key', 'option_value')
            ->get();
    }

    public static function updateSettings($settings)
    {
        $errors = [];
        foreach($settings as $key => $row)
        {
            $setting = static::findByFieldOrCreate(['option_key' => $row['option_key']]);
            /*Delete field*/
            if(isset($row['isDeleted']) && $row['isDeleted'] == true)
            {
                if($setting->id)
                {
                    if(!$setting->delete())
                    {
                        array_push($errors, $row['option_key']);
                    }
                }
            }
            /*Save fields*/
            else
            {
                foreach($row as $keyRow => $value)
                {
                    if(in_array($keyRow, static::$acceptableEdit) && $keyRow)
                    {
                        $setting->$keyRow = $value;
                    }
                }
                if(!$setting->save())
                {
                    array_push($errors, $row['option_key']);
                }
            }
        }
        return $errors;
    }
}