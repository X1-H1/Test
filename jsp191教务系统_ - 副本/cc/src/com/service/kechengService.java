package com.service;

import java.util.List;

import com.dao.TKechengDAO;

public class kechengService
{
	private TKechengDAO kechengDAO;

	public TKechengDAO getKechengDAO()
	{
		return kechengDAO;
	}

	public void setKechengDAO(TKechengDAO kechengDAO)
	{
		this.kechengDAO = kechengDAO;
	}
	
	public List findAllKecheng()
	{
		String sql="from TKecheng where kechengDel='no'";
		return kechengDAO.getHibernateTemplate().find(sql);
	}
	
	
	public String findKechengName(int kechengId)
	{
		return kechengDAO.findById(kechengId).getKechengName();
	}

}
