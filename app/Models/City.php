<?php
namespace App\Models;

use App\Models\AbstractModel;

class City extends AbstractModel
{
    private static $acceptableEdit = [

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
    protected $table = 'cities';

    protected $primaryKey = 'id';

    public static function getAllCity()
    {
        return static::select('id', 'country_id', 'country_2_code', 'city_name', 'latitude', 'longitude')
            ->get();
    }
}