<?php


function getGTK($skey){
    $hash = 5381;
    for($i=0;$i<strlen($skey);++$i){
        $hash += ($hash << 5) + utf8_unicode($skey[$i]);
    }
    return $hash & 0x7fffffff;
}
function utf8_unicode($c) {
    switch(strlen($c)) {
        case 1:
            return ord($c);
        case 2:
            $n = (ord($c[0]) & 0x3f) << 6;
            $n += ord($c[1]) & 0x3f;
            return $n;
        case 3:
            $n = (ord($c[0]) & 0x1f) << 12;
            $n += (ord($c[1]) & 0x3f) << 6;
            $n += ord($c[2]) & 0x3f;
            return $n;
        case 4:
            $n = (ord($c[0]) & 0x0f) << 18;
            $n += (ord($c[1]) & 0x3f) << 12;
            $n += (ord($c[2]) & 0x3f) << 6;
            $n += ord($c[3]) & 0x3f;
            return $n;
    }
}

/**
 * json
 * @param $array
 */
function jsonObject($array)
{
    header("Content-type: application/json");
    exit(json_encode($array));
}



function consoleShow($msg){
    ob_end_flush();
    echo $msg.'<br />';
    echo('<script> $("body").scrollTop($("body")[0].scrollHeight);</script>');
    ob_flush();
    flush();
}