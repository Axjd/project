package ems.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ems.vo.Post;
import ems.vo.User;

public class UserDaoImpl implements IUserDao {
	SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public boolean login(User u) {
		// TODO Auto-generated method stub
		boolean flag = false;
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User u where u.username=? and u.password=?");//HQL
		query.setParameter(0, u.getUsername());
		query.setParameter(1, u.getPassword());
		List list = query.list();
		session.close();
		if(list.size()>0)
			flag = true;	
		return flag;
	}
	public void register(User u){
		Session session = sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		session.save(u);
		t.commit();
		session.close();
	}
	
	@Override
	public void updateU(User u) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		//News n=(News)session.get(News.class, id);
		session.merge(u);
		tx.commit();
		session.close();
	}
	@Override
	public User queryOne(String author) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Query query=(Query) session.createQuery("from  User u where u.username=?");
		query.setParameter(0,author);
		List list = query.list();
		session.close();
		User u=(User)list.get(0);
		return u;
	}
	
	
	
}
