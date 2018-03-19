package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TBanjiDAO;
import com.dao.TChengjiDAO;
import com.dao.TKechengDAO;
import com.dao.TStuDAO;
import com.dao.TXibieDAO;
import com.dao.TXuyuanDAO;
import com.dao.TZhuanyeDAO;
import com.model.TBanji;
import com.model.TChengji;
import com.model.TStu;
import com.model.TTea;
import com.model.TXibie;
import com.model.TZhuanye;
import com.opensymphony.xwork2.ActionSupport;

public class chengjiAction<xibieDAO> extends ActionSupport
{
	private int xuyuanId;
	private int xibieId;
	private int zhuanyeId;
	private int banjiId;
	private int stuId;
	private int kechengId;
	private int kaoshifenshu;
	private String kaoshishijian;
	private String kaoshileixing;
	
	
	private String message;
	private String path;   
	
	private TXuyuanDAO xuyuanDAO;
	private TXibieDAO xibieDAO;
	private TZhuanyeDAO zhuanyeDAO;
	private TBanjiDAO banjiDAO;
	private TStuDAO stuDAO;
	private TChengjiDAO chengjiDAO;
	private TKechengDAO kechengDAO;
	
	
	public String selectXuyuan()
	{
		String sql="from TXuyuan where xuyuanDel='no'";
		List xuyuanList=xuyuanDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("xuyuanList", xuyuanList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String selectXibie()
	{
		String sql="from TXibie where xibieDel='no' and xuyuanId="+xuyuanId;
		List xibieList=xibieDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("xibieList", xibieList);
		return ActionSupport.SUCCESS;
	}
	
	public String selectZhuanye()
	{
		String sql="from TZhuanye where zhuanyeDel='no' and xibieId="+xibieId;
		List zhuanyeList=zhuanyeDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhuanyeList", zhuanyeList);
		return ActionSupport.SUCCESS;
	}
	
	public String selectBanji()
	{
		String sql="from TBanji where banjiDel='no' and zhuanyeId="+zhuanyeId;
		List banjiList=banjiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("banjiList", banjiList);
		return ActionSupport.SUCCESS;
	}
	
	public String selectStu()
	{
		String sql="from TStu where stuDel='no' and banjiId="+banjiId;
		List stuList=stuDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}
	
	public String chengjiMana()
	{
		Map session= ServletActionContext.getContext().getSession();
		TTea tea=(TTea)session.get("tea");
		String sql="from TChengji where stuId=? and kechengId=?";
		Object[] con={stuId,tea.getKechengId()};
		List chengjiList=chengjiDAO.getHibernateTemplate().find(sql,con);
		for(int i=0;i<chengjiList.size();i++)
		{
			TChengji chengji=(TChengji)chengjiList.get(i);
			int kechengId=chengji.getKechengId();
			chengji.setChengjiOne1(kechengDAO.findById(kechengId).getKechengName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("chengjiList", chengjiList);
		return ActionSupport.SUCCESS;
		
	}
	
	
	public String chengjiAdd()
	{
		TChengji chengji=new TChengji();
		chengji.setStuId(stuId);
		chengji.setKechengId(kechengId);
		chengji.setKaoshifenshu(kaoshifenshu);
		chengji.setKaoshishijian(kaoshishijian);
		chengji.setKaoshileixing(kaoshileixing);
		
		Map session= ServletActionContext.getContext().getSession();
		TTea tea=(TTea)session.get("tea");
		chengji.setChengjiAddUser(tea.getLoginName());
		
		chengjiDAO.save(chengji);
		//this.setMessage("�ɼ�¼��ɹ�");
		this.setPath("chengjiMana.action?stuId="+stuId+"&kechengId="+tea.getKechengId());
		return "succeed";
	}
	
	
	
	public String chengjiMine()
	{
		String sql="from TChengji where stuId=? order by kechengId";
		Map session= ServletActionContext.getContext().getSession();
		TStu stu=(TStu)session.get("stu");
		Object[] con={stu.getStuId()};
		List chengjiList=chengjiDAO.getHibernateTemplate().find(sql,con);
		for(int i=0;i<chengjiList.size();i++)
		{
			TChengji chengji=(TChengji)chengjiList.get(i);
			int kechengId=chengji.getKechengId();
			chengji.setChengjiOne1(kechengDAO.findById(kechengId).getKechengName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("chengjiList", chengjiList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String chengjiChakan()
	{
		System.out.println(xuyuanId+"^^"+xibieId+"^^"+zhuanyeId+"^^"+banjiId);
		StringBuffer sql=new StringBuffer("from TStu where xuyuanId="+xuyuanId);
		
		if(xibieId!=0)
		{
			sql.append(" and xibieId="+xibieId);
		}
		if(zhuanyeId!=0)
		{
			sql.append(" and zhuanyeId="+zhuanyeId);
		}
		if(banjiId!=0)
		{
			sql.append(" and banjiId="+banjiId);
		}
		sql.append(" order by stuId");
		System.out.println(sql.toString());
		
		List stuList=stuDAO.getHibernateTemplate().find(sql.toString());
		List chengjiList=new ArrayList();
		for(int i=0;i<stuList.size();i++)
		{
			TStu stu=(TStu)stuList.get(i);
			int stuId=stu.getStuId();
			List list1=chengjiDAO.getHibernateTemplate().find("from TChengji where stuId="+stuId+" and kechengId="+kechengId);
			for(int j=0;j<list1.size();j++)
			{
				chengjiList.add(list1.get(j));
			}
			
		}
		
		for(int i=0;i<chengjiList.size();i++)
		{
			TChengji chengji=(TChengji)chengjiList.get(i);
			int kechengId=chengji.getKechengId();
			int stuId=chengji.getStuId();
			chengji.setChengjiOne1(kechengDAO.findById(kechengId).getKechengName());
			chengji.setChengjiOne2(stuDAO.findById(stuId).getStuRealname());
			
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("chengjiList", chengjiList);
		return ActionSupport.SUCCESS;
	}


	public void setBanjiId(int banjiId)
	{
		this.banjiId = banjiId;
	}


	public int getXibieId()
	{
		return xibieId;
	}


	public void setXibieId(int xibieId)
	{
		this.xibieId = xibieId;
	}


	public String getKaoshileixing()
	{
		return kaoshileixing;
	}


	public void setKaoshileixing(String kaoshileixing)
	{
		this.kaoshileixing = kaoshileixing;
	}


	public String getKaoshishijian()
	{
		return kaoshishijian;
	}


	public void setKaoshishijian(String kaoshishijian)
	{
		this.kaoshishijian = kaoshishijian;
	}


	public int getXuyuanId()
	{
		return xuyuanId;
	}


	public void setXuyuanId(int xuyuanId)
	{
		this.xuyuanId = xuyuanId;
	}



	public int getKaoshifenshu()
	{
		return kaoshifenshu;
	}


	public void setKaoshifenshu(int kaoshifenshu)
	{
		this.kaoshifenshu = kaoshifenshu;
	}


	public int getZhuanyeId()
	{
		return zhuanyeId;
	}


	public TKechengDAO getKechengDAO()
	{
		return kechengDAO;
	}


	public void setKechengDAO(TKechengDAO kechengDAO)
	{
		this.kechengDAO = kechengDAO;
	}


	public int getKechengId()
	{
		return kechengId;
	}


	public void setKechengId(int kechengId)
	{
		this.kechengId = kechengId;
	}


	public int getStuId()
	{
		return stuId;
	}


	public void setStuId(int stuId)
	{
		this.stuId = stuId;
	}


	public int getBanjiId()
	{
		return banjiId;
	}


	public void setZhuanyeId(int zhuanyeId)
	{
		this.zhuanyeId = zhuanyeId;
	}


	public TBanjiDAO getBanjiDAO()
	{
		return banjiDAO;
	}
	public void setBanjiDAO(TBanjiDAO banjiDAO)
	{
		this.banjiDAO = banjiDAO;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	
	public TChengjiDAO getChengjiDAO()
	{
		return chengjiDAO;
	}




	public void setChengjiDAO(TChengjiDAO chengjiDAO)
	{
		this.chengjiDAO = chengjiDAO;
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
	
	
}
