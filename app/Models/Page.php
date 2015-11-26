<?php
namespace App\Models;

use App\Models\AbstractModel;

class Page extends AbstractModel
{
    private static $acceptableEdit = [
        'position',
        'page_template',
        'title',
        'slug',
        'content',
        'meta_keywords',
        'meta_description',
        'status'
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
    protected $table = 'pages';

    protected $primaryKey = 'id';

    public static function getAllPages()
    {
        return static::paginate(10);
    }

    public static function getPageById($id)
    {
        return static::find($id);
    }

    public static function updatePage($id, $fields)
    {
        $page = static::findByFieldOrCreate(['id' => $id]);
        foreach($fields as $keyRow => $value)
        {
            if(in_array($keyRow, static::$acceptableEdit) && $keyRow)
            {
                $page->$keyRow = $value;
            }
        }
        $result = [];
        $result['error'] = !$page->save();
        $result['data'] = $page;
        return $result;
    }
}