package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TKebiao;

/**
 * Data access object (DAO) for domain model class TKebiao.
 * 
 * @see com.model.TKebiao
 * @author MyEclipse Persistence Tools
 */

public class TKebiaoDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TKebiaoDAO.class);

	protected void initDao()
	{
		// do nothing
	}

	public void save(TKebiao transientInstance)
	{
		log.debug("saving TKebiao instance");
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

	public void delete(TKebiao persistentInstance)
	{
		log.debug("deleting TKebiao instance");
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

	public TKebiao findById(java.lang.Integer id)
	{
		log.debug("getting TKebiao instance with id: " + id);
		try
		{
			TKebiao instance = (TKebiao) getHibernateTemplate().get(
					"com.model.TKebiao", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TKebiao instance)
	{
		log.debug("finding TKebiao instance by example");
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
		log.debug("finding TKebiao instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TKebiao as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll()
	{
		log.debug("finding all TKebiao instances");
		try
		{
			String queryString = "from TKebiao";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TKebiao merge(TKebiao detachedInstance)
	{
		log.debug("merging TKebiao instance");
		try
		{
			TKebiao result = (TKebiao) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TKebiao instance)
	{
		log.debug("attaching dirty TKebiao instance");
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

	public void attachClean(TKebiao instance)
	{
		log.debug("attaching clean TKebiao instance");
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

	public static TKebiaoDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TKebiaoDAO) ctx.getBean("TKebiaoDAO");
	}
}