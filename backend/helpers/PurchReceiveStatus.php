<?php

namespace backend\helpers;

class AccountType
{
    const SAVING = 1;
    const FLOW = 2;
    private static $data = [
        1 => 'ยังไม่รับ',
        2 => 'รับเข้าแล้ว'
    ];

    private static $dataobj = [
        ['id'=>1,'name' => 'ยังไม่รับ'],
        ['id'=>2,'name' => 'รับเข้าแล้ว']
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
