<?php

namespace backend\helpers;

class EventType
{
    const TYPE_PURCH = 1;
    const TYPE_CUT = 2;
    private static $data = [
        1 => 'แผนซื้อ',
        2 => 'แผนตัด'
    ];

    private static $dataobj = [
        ['id'=>1,'name' => 'แผนซื้อ'],
        ['id'=>2,'name' => 'แผนตัด'],
    ];
    public static function asArray()
    {
        return self::$data;
    }
    public static function asArrayObject()
    {
        return self::$dataobj;
    }
    public static function getTypeById($idx)
    {
        if (isset(self::$data[$idx])) {
            return self::$data[$idx];
        }

        return 'Unknown Type';
    }
    public static function getTypeByName($idx)
    {
        if (isset(self::$data[$idx])) {
            return self::$data[$idx];
        }

        return 'Unknown Type';
    }
}
