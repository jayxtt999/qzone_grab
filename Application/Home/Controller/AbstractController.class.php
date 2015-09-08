<?php
/**
 * Created by PhpStorm.
 * User: xiett
 * Date: 15-9-8
 * Time: 下午9:57
 */

namespace Home\Controller;
use Think\Controller;

class AbstractController  extends Controller{

    function __construct(){
        parent::__construct();
        if(false===session("sid")){
           $this->error("登录超时","/home/home/index");

        }

    }


} 