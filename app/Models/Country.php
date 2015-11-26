<?php
namespace App\Models;

use App\Models\AbstractModel;

class Country extends AbstractModel
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
    protected $table = 'countries';

    protected $primaryKey = 'id';

    public static function getAllCountries()
    {
        return static::select('id', 'country_3_code', 'country_2_code', 'country_name')
            ->get();
    }
}