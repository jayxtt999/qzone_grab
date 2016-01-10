<?php
/**
 * Created by PhpStorm.
 * User: xiett
 * Date: 15-12-9
 * Time: 下午10:00
 */

namespace Home\Logic;
use Think\Model;
class ShuoshuoLogic extends \Think\Model{


    public function getComment($uin,$cellId){

        if(!$uin || !$cellId){
            return "";
        }
        $common = M("friend_comment");
        $where = array(
            'uin'=>$uin,
            'cellid'=>$cellId,
        );
        return $common->where($where)->select();
    }

    public function getReplys($cellid,$commentid){

        if(!$cellid || !$commentid){
            return "";
        }
        $replys = M("friend_replys");
        $where = array(
            'cellid'=>$cellid,
            'commentid'=>$commentid,
        );
        return $replys->where($where)->select();
    }

    public function getShuoShuoRow($uin,$cellid){
        $shuoshuo = M("friend_shuoshuo");
        $where = array(
            'uin'=>$uin,
            'cellid'=>$cellid,
        );
        return $shuoshuo->where($where)->select()->limit(1);

    }

}