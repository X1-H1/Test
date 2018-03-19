package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TKebiaoDAO;
import com.dao.TKechengDAO;
import com.dao.TTeaDAO;
import com.model.TKebiao;
import com.model.TKecheng;
import com.opensymphony.xwork2.ActionSupport;

public class kebiaoAction extends ActionSupport
{
	private Integer id;
	private Integer kechengId;
	private String shijian;
	private String jieci;

	private String jiaoshi;
	private Integer teaId;
	
	private TKechengDAO kechengDAO;
	private TTeaDAO teaDAO;
	private TKebiaoDAO kebiaoDAO;
	
	private String message;
	private String path;
	
	
	public String kebiaoAdd()
	{
		TKebiao kebiao=new TKebiao();
		
		kebiao.setKechengId(kechengId);
		kebiao.setShijian(shijian);
		kebiao.setJieci(jieci);
		kebiao.setJiaoshi(jiaoshi);
		kebiao.setTeaId(teaId);
		
		kebiaoDAO.save(kebiao);
		this.setMessage("录入成功");
		this.setPath("kebiaoMana.action");
		return "succeed";
	}
	
	
	public String kebiaoMana()
	{
		String sql = "from TKebiao";
		List kebiaoList=kebiaoDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<kebiaoList.size();i++)
		{
			TKebiao kebiao=(TKebiao)kebiaoList.get(i);
			kebiao.setKecheng(kechengDAO.findById(kebiao.getKechengId()));
			kebiao.setTea(teaDAO.findById(kebiao.getTeaId()));
			
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("kebiaoList", kebiaoList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String kebiaoDel()
	{
		TKebiao kebiao=kebiaoDAO.findById(id);
		kebiaoDAO.delete(kebiao);
		
		this.setMessage("删除成功");
		this.setPath("kebiaoMana.action");
		return "succeed";
	}
	
	
	public String kebiaoAll()
	{
		String sql = "from TKebiao";
		List kebiaoList=kebiaoDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<kebiaoList.size();i++)
		{
			TKebiao kebiao=(TKebiao)kebiaoList.get(i);
			kebiao.setKecheng(kechengDAO.findById(kebiao.getKechengId()));
			kebiao.setTea(teaDAO.findById(kebiao.getTeaId()));
			
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("kebiaoList", kebiaoList);
		return ActionSupport.SUCCESS;
	}
	
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getJiaoshi()
	{
		return jiaoshi;
	}
	public void setJiaoshi(String jiaoshi)
	{
		this.jiaoshi = jiaoshi;
	}
	public String getJieci()
	{
		return jieci;
	}
	public void setJieci(String jieci)
	{
		this.jieci = jieci;
	}
	public TKebiaoDAO getKebiaoDAO()
	{
		return kebiaoDAO;
	}
	public void setKebiaoDAO(TKebiaoDAO kebiaoDAO)
	{
		this.kebiaoDAO = kebiaoDAO;
	}
	
	public TKechengDAO getKechengDAO()
	{
		return kechengDAO;
	}
	public void setKechengDAO(TKechengDAO kechengDAO)
	{
		this.kechengDAO = kechengDAO;
	}
	public Integer getKechengId()
	{
		return kechengId;
	}
	public void setKechengId(Integer kechengId)
	{
		this.kechengId = kechengId;
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
	public String getShijian()
	{
		return shijian;
	}
	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}
	public TTeaDAO getTeaDAO()
	{
		return teaDAO;
	}
	public void setTeaDAO(TTeaDAO teaDAO)
	{
		this.teaDAO = teaDAO;
	}
	public Integer getTeaId()
	{
		return teaId;
	}
	public void setTeaId(Integer teaId)
	{
		this.teaId = teaId;
	}
		
}
