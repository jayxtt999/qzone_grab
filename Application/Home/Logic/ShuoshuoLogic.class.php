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

    public  static function getTextClassArr(){

        return array(
            "0X00000000"=>array("className"=>"未知分类","conf"=>0),
            "0X00000001"=>array("className"=>"旅游","conf"=>0),
            "0X00000002"=>array("className"=>"游戏","conf"=>0),
            "0X00000003"=>array("className"=>"人物","conf"=>0),
            "0X00000004"=>array("className"=>"体育","conf"=>0),
            "0X00000005"=>array("className"=>"音乐","conf"=>0),
            "0X00000006"=>array("className"=>"影视","conf"=>0),
            "0X00000007"=>array("className"=>"软件","conf"=>0),
            "0X00000008"=>array("className"=>"文学","conf"=>0),
            "0X00000009"=>array("className"=>"美食","conf"=>0),
            "0X00000010"=>array("className"=>"动漫","conf"=>0),
            "0X00000011"=>array("className"=>"教育","conf"=>0),
            "0X00000012"=>array("className"=>"科技","conf"=>0),
            "0X00000013"=>array("className"=>"军事","conf"=>0),
            "0X00000014"=>array("className"=>"天气","conf"=>0),
            "0X00000015"=>array("className"=>"广告","conf"=>0),
            "0X00000016"=>array("className"=>"群体聚集","conf"=>0),
            "0X00000017"=>array("className"=>"自然灾害","conf"=>0),
            "0X00000018"=>array("className"=>"交通事故","conf"=>0),
            "0X00000019"=>array("className"=>"金融安全","conf"=>0),
            "0X00000021"=>array("className"=>"敏感政治","conf"=>0),
            "0X00000022"=>array("className"=>"贪腐","conf"=>0),
            "0X00000023"=>array("className"=>"非法组织","conf"=>0),
            "0X00000024"=>array("className"=>"反动言论","conf"=>0),
            "0X00000025"=>array("className"=>"先进事迹","conf"=>0),
            "0X00000028"=>array("className"=>"心灵鸡汤","conf"=>0),
            "0X000000A"=>array("className"=>"健康","conf"=>0),
            "0X000000B"=>array("className"=>"医药","conf"=>0),
            "0X000000C"=>array("className"=>"商铺","conf"=>0),
            "0X000000D"=>array("className"=>"财经","conf"=>0),
            "0X000000E"=>array("className"=>"汽车","conf"=>0),
            "0X000000F"=>array("className"=>"房产","conf"=>0),
            "0X000000G"=>array("className"=>"健康","conf"=>0),
            "0X0000001A"=>array("className"=>"刑事犯罪","conf"=>0),
            "0X0000001B"=>array("className"=>"暴力执法","conf"=>0),
            "0X0000001C"=>array("className"=>"求职招聘","conf"=>0),
            "0X0000001D"=>array("className"=>"食品安全","conf"=>0),
            "0X0000001E"=>array("className"=>"环境污染","conf"=>0),
            "0X0000001F"=>array("className"=>"疾病疫情","conf"=>0),
            "0X0000002A"=>array("className"=>"其它政治类","conf"=>0),
            "0X0000003D"=>array("className"=>"文化","conf"=>0),
            "0X0000FFFF"=>array("className"=>"其他","conf"=>0),
            "0X00000029"=>array("className"=>"其他社会类别","conf"=>0),
            "0X0000002F"=>array("className"=>"幽默搞笑","conf"=>0),
        );
    }

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
        return $shuoshuo->where($where)->find();;

    }

    public function getShuoShuoAll($where){
        $shuoshuo = M("friend_shuoshuo");
        return $shuoshuo->where($where)->order("time desc")->select();

    }



}