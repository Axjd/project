package ems.dao;

import java.util.List;

import javax.faces.application.Application;

import org.aspectj.apache.bcel.util.ClassPath;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ems.vo.Post;
import ems.vo.Reply;
import ems.vo.User;




public class PostDaoImpl implements IPostDao{
	SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Post> queryAll() {
		
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Post");
		List<Post> list = query.list();
		session.close();
		return list;
	}
	public List<Post> queryMy(String author) {
		
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Post n where n.author= ?");
		query.setParameter(0, author);
		List<Post> list = query.list();
		session.close();
		return list;
	}
	public void addPost(Post n){
		Session session = sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		session.save(n);
		t.commit();
		session.close();
	}

	@Override
	public Post queryOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.openSession();
		Post n=(Post)session.get(Post.class, id);
		session.close();
		return n;
	}

	@Override
	public void deletePost(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		Post n=(Post)session.get(Post.class, id);
		session.delete(n);
		tx.commit();
		session.close();
	}

	@Override
	public void updatePost(Post n) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		//News n=(News)session.get(News.class, id);
		session.merge(n);
		tx.commit();
		session.close();
	}

	@Override
	public void postComment(Reply c) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		session.save(c);
		t.commit();
		session.close();
	}

	
	

}
