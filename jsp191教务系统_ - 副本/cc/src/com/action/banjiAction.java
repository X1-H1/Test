package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TBanjiDAO;
import com.dao.TStuDAO;
import com.dao.TXibieDAO;
import com.dao.TXuyuanDAO;
import com.dao.TZhuanyeDAO;
import com.model.TBanji;
import com.model.TXibie;
import com.model.TXuyuan;
import com.model.TZhuanye;
import com.opensymphony.xwork2.ActionSupport;

public class banjiAction<zhuanyeDAO> extends ActionSupport
{
	private int banjiId;
	private String banjiBianhao;
	private String banjiName;
	private String banjiRuxuenianfen;
	
	private int zhuanyeId;
	
	private String message;
	private String path;
	
	private TXuyuanDAO xuyuanDAO;
	private TXibieDAO xibieDAO;
	private TZhuanyeDAO zhuanyeDAO;
	private TBanjiDAO banjiDAO;
	private TStuDAO stuDAO;
	
	public String banjiMana()
	{
		String sql="from TBanji where banjiDel='no' and zhuanyeId="+zhuanyeId;
		List banjiList=banjiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("banjiList", banjiList);
		request.put("zhuanyeId", zhuanyeId);
		return ActionSupport.SUCCESS;
	}
	
	public String banjiAdd()
	{
		TBanji banji=new TBanji();
		banji.setBanjiBianhao(banjiBianhao);
		banji.setBanjiName(banjiName);
		banji.setBanjiRuxuenianfen(banjiRuxuenianfen);
		banji.setBanjiDel("no");
		banji.setZhuanyeId(zhuanyeId);
		TZhuanye zhuanye=zhuanyeDAO.findById(zhuanyeId);
		TXibie xibie=xibieDAO.findById(zhuanye.getXibieId());
		banji.setXibieId(zhuanye.getXibieId());
		banji.setXuyuanId(xibie.getXuyuanId());
		banjiDAO.save(banji);
		this.setMessage("��ӳɹ�");
		this.setPath("xuyuanMana.action");
		return "succeed";
	}
	
	public String banjiDel()
	{
		String sql="from TStu where stuDel='no' and banjiId="+banjiId;
		List stuList=stuDAO.getHibernateTemplate().find(sql);
		if(stuList.size()>0)
		{
			this.setMessage("����ɾ��˰༶��ѧ��");
			this.setPath("xuyuanMana.action");
		}
		else
		{
			TBanji banji=banjiDAO.findById(banjiId);
			banji.setBanjiDel("yes");
			banjiDAO.attachDirty(banji);
			this.setMessage("ɾ��ɹ�");
			this.setPath("xuyuanMana.action");
		}
		return "succeed";
	}
	
	
	public String banjiEditPre()
	{
		TBanji banji=banjiDAO.findById(banjiId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("banji", banji);
		return ActionSupport.SUCCESS;
	}
	
	public String banjiEdit()
	{
		TBanji banji=banjiDAO.findById(banjiId);
		banji.setBanjiBianhao(banjiBianhao);
		banji.setBanjiName(banjiName);
		banji.setBanjiRuxuenianfen(banjiRuxuenianfen);
		banjiDAO.attachDirty(banji);
		this.setMessage("��ϸ�ɹ�");
		this.setPath("xuyuanMana.action");
		return "succeed";
	}
	
	
	public String getBanjiBianhao()
	{
		return banjiBianhao;
	}
	public void setBanjiBianhao(String banjiBianhao)
	{
		this.banjiBianhao = banjiBianhao;
	}
	public TBanjiDAO getBanjiDAO()
	{
		return banjiDAO;
	}
	public void setBanjiDAO(TBanjiDAO banjiDAO)
	{
		this.banjiDAO = banjiDAO;
	}
	public int getBanjiId()
	{
		return banjiId;
	}
	public void setBanjiId(int banjiId)
	{
		this.banjiId = banjiId;
	}
	public String getBanjiName()
	{
		return banjiName;
	}
	public void setBanjiName(String banjiName)
	{
		this.banjiName = banjiName;
	}
	public String getBanjiRuxuenianfen()
	{
		return banjiRuxuenianfen;
	}
	public void setBanjiRuxuenianfen(String banjiRuxuenianfen)
	{
		this.banjiRuxuenianfen = banjiRuxuenianfen;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public TStuDAO getStuDAO()
	{
		return stuDAO;
	}
	public void setStuDAO(TStuDAO stuDAO)
	{
		this.stuDAO = stuDAO;
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
	public int getZhuanyeId()
	{
		return zhuanyeId;
	}
	public void setZhuanyeId(int zhuanyeId)
	{
		this.zhuanyeId = zhuanyeId;
	}
	
	
}
