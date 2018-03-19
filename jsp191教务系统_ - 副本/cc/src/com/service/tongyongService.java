package com.service;

import java.util.List;

import com.dao.TBanjiDAO;
import com.dao.TXibieDAO;
import com.dao.TXuyuanDAO;
import com.dao.TZhuanyeDAO;

public class tongyongService
{
	private TXuyuanDAO xuyuanDAO;
	private TXibieDAO xibieDAO;
	private TZhuanyeDAO zhuanyeDAO;
	private TBanjiDAO banjiDAO;
	
	
	public List findAllXuyuan()
	{
		String sql="from TXuyuan where xuyuanDel='no'";
		List xuyuanList=xuyuanDAO.getHibernateTemplate().find(sql);
		return xuyuanList;
	}
	
	public List findAllXibei(int xuyuanId)
	{
		String sql="from TXibie where xibieDel='no' and xuyuanId="+xuyuanId;
		List xibieList=xibieDAO.getHibernateTemplate().find(sql);
		return xibieList;
	}
	
	public List findAllZhuanye(int xibieId)
	{
		String sql="from TZhuanye where zhuanyeDel='no' and xibieId="+xibieId;
		List zhuanyeList=zhuanyeDAO.getHibernateTemplate().find(sql);
		return zhuanyeList;
	}
	
	public List findAllBanji(int zhuanyeId)
	{
		String sql="from TBanji where banjiDel='no' and zhuanyeId="+zhuanyeId;
		List banjiList=banjiDAO.getHibernateTemplate().find(sql);
		return banjiList;
	}
	
	
	public TBanjiDAO getBanjiDAO()
	{
		return banjiDAO;
	}
	public void setBanjiDAO(TBanjiDAO banjiDAO)
	{
		this.banjiDAO = banjiDAO;
	}
	public TXibieDAO getXibieDAO()
	{
		return xibieDAO;
	}
	public void setXibieDAO(TXibieDAO xibieDAO)
	{
		this.xibieDAO = xibieDAO;
	}
	public TXuyuanDAO getXuyuanDAO()
	{
		return xuyuanDAO;
	}
	public void setXuyuanDAO(TXuyuanDAO xuyuanDAO)
	{
		this.xuyuanDAO = xuyuanDAO;
	}
	public TZhuanyeDAO getZhuanyeDAO()
	{
		return zhuanyeDAO;
	}
	public void setZhuanyeDAO(TZhuanyeDAO zhuanyeDAO)
	{
		this.zhuanyeDAO = zhuanyeDAO;
	}
	

}
