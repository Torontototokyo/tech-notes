<?php
$arr = [-1,5,6,5,4,-2,3,2,1,0,-1];
function bubbleSort(array  $arr){
    $len = count($arr);
    for ($i = 0 ; $i < $len; $i ++){
        for ($j = 0 ; $j+1 < $len; $j ++){
            if($arr[$j] > $arr[ $j + 1]){
                $t = $arr[$j];
                $arr[$j] = $arr[$j+1];
                $arr[$j+1] = $t;
            }
        }
    }
    return $arr;
}
function selectSort(array $arr){
    $len = count($arr);
    $start = 0;
    $ifTime=0;
    for ($i = 0; $i < $len ;$i++){
        $min_index = $start;
        for ($j = $start+1; $j < $len ;$j++){
            $ifTime++;
            if($arr[$min_index] > $arr[$j]){
                $min_index = $j;
            }
        }
        $tmp = $arr[$min_index];
        $arr[$min_index] = $arr[$start];
        $arr[$start] = $tmp;
        $start++;
    }
    return $arr;
}
var_dump(selectSort($arr));