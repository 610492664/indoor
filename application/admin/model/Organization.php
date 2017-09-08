<?php
namespace app\admin\model;

class Organization extends Base
{
    protected $type = [];
    protected $insert = ['p_org_id', 'chain'];

    protected function setPOrgIdAttr()
    {
        return input('session.user.org_id');
    }

    protected function setChainAttr()
    {
        $p_org_id = input('session.user.org_id');
        $p_chain = $this->where(['org_id'=>$p_org_id])->value('chain');
        return  $p_chain.'-'.$p_org_id;
    }

    public function getStatusAttr($value)
    {
        $status = [0=>'正常',1=>'撤销',2=>'合并'];
        return $status[$value];
    }

    public function organization()
    {
      return $this->belongsTo('Organization', 'p_org_id', 'org_id');
    }

    public function parents()
    {
        //todo 查询所有父单位
    }

    public function parent()
    {
        //todo 查询直接父单位
    }

    public function child()
    {
        //todo 查询直接子单位
    }

    /**
     * 获取全部子单位主键org_id
     *
     * @param string $org_id 单位主键id
     * @return array
     */
    public function children($org_id = '', $self = true )
    {
        $org_id = $org_id !== '' ?: input('session.user.org_id');
        $chain = $this->where(['org_id'=>$org_id])->value('chain');
        $children_org_ids = $this->where('chain', 'like',$chain.'-'.$org_id.'%')->column('org_id');
        $self && array_push($children_org_ids , $org_id);//包含本单位
        return $children_org_ids;
    }

}