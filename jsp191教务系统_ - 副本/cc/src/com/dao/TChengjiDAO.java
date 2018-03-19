package com.dao;

import java.util.Date;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TChengji;

/**
 * Data access object (DAO) for domain model class TChengji.
 * 
 * @see com.model.TChengji
 * @author MyEclipse Persistence Tools
 */

public class TChengjiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TChengjiDAO.class);

	// property constants
	public static final String STU_ID = "stuId";

	public static final String KECHENG_ID = "kechengId";

	public static final String KAOSHIFENSHU = "kaoshifenshu";

	public static final String KAOSHISHIJIAN = "kaoshishijian";

	public static final String KAOSHILEIXING = "kaoshileixing";

	public static final String CHENGJI_ADD_USER = "chengjiAddUser";

	public static final String CHENGJI_ONE1 = "chengjiOne1";

	public static final String CHENGJI_ONE2 = "chengjiOne2";

	public static final String CHENGJI_ONE3 = "chengjiOne3";

	public static final String CHENGJI_ONE4 = "chengjiOne4";

	public static final String CHENGJI_ONE7 = "chengjiOne7";

	public static final String CHENGJI_ONE8 = "chengjiOne8";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TChengji transientInstance)
	{
		log.debug("saving TChengji instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TChengji persistentInstance)
	{
		log.debug("deleting TChengji instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TChengji findById(java.lang.Integer id)
	{
		log.debug("getting TChengji instance with id: " + id);
		try
		{
			TChengji instance = (TChengji) getHibernateTemplate().get(
					"com.model.TChengji", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TChengji instance)
	{
		log.debug("finding TChengji instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TChengji instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TChengji as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByStuId(Object stuId)
	{
		return findByProperty(STU_ID, stuId);
	}

	public List findByKechengId(Object kechengId)
	{
		return findByProperty(KECHENG_ID, kechengId);
	}

	public List findByKaoshifenshu(Object kaoshifenshu)
	{
		return findByProperty(KAOSHIFENSHU, kaoshifenshu);
	}

	public List findByKaoshishijian(Object kaoshishijian)
	{
		return findByProperty(KAOSHISHIJIAN, kaoshishijian);
	}

	public List findByKaoshileixing(Object kaoshileixing)
	{
		return findByProperty(KAOSHILEIXING, kaoshileixing);
	}

	public List findByChengjiAddUser(Object chengjiAddUser)
	{
		return findByProperty(CHENGJI_ADD_USER, chengjiAddUser);
	}

	public List findByChengjiOne1(Object chengjiOne1)
	{
		return findByProperty(CHENGJI_ONE1, chengjiOne1);
	}

	public List findByChengjiOne2(Object chengjiOne2)
	{
		return findByProperty(CHENGJI_ONE2, chengjiOne2);
	}

	public List findByChengjiOne3(Object chengjiOne3)
	{
		return findByProperty(CHENGJI_ONE3, chengjiOne3);
	}

	public List findByChengjiOne4(Object chengjiOne4)
	{
		return findByProperty(CHENGJI_ONE4, chengjiOne4);
	}

	public List findByChengjiOne7(Object chengjiOne7)
	{
		return findByProperty(CHENGJI_ONE7, chengjiOne7);
	}

	public List findByChengjiOne8(Object chengjiOne8)
	{
		return findByProperty(CHENGJI_ONE8, chengjiOne8);
	}

	public List findAll()
	{
		log.debug("finding all TChengji instances");
		try
		{
			String queryString = "from TChengji";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TChengji merge(TChengji detachedInstance)
	{
		log.debug("merging TChengji instance");
		try
		{
			TChengji result = (TChengji) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TChengji instance)
	{
		log.debug("attaching dirty TChengji instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TChengji instance)
	{
		log.debug("attaching clean TChengji instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TChengjiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TChengjiDAO) ctx.getBean("TChengjiDAO");
	}
}