package ems.action;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import ems.dao.PostDaoImpl;
import ems.vo.Reply;
import ems.vo.Post;

public class postAction extends ActionSupport{

	Reply  c;
	PostDaoImpl nd;
	public PostDaoImpl getNd() {
		return nd;
	}
	public void setNd(PostDaoImpl nd) {
		this.nd = nd;
	}
	public Reply getC() {
		return c;
	}
	public void setC(Reply c) {
		this.c = c;
	}

	public Post n;
	public int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Post getN() {
		return n;
	}
	public void setN(Post n) {
		this.n = n;
	}
	
	
	
	List<Post> list;
	List<Post> list2;
	String keyword;
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public List<Post> getList2() {
		return list2;
	}
	public void setList2(List<Post> list2) {
		this.list2 = list2;
	}
	public List<Post> getList() {
		return list;
	}
	public void setList(List<Post> list) {
		this.list = list;
	}
	public String addPost(){
		Map session1=ActionContext.getContext().getSession();
		String author=(String) session1.get("login");
		n.setAuthor(author);
		nd.addPost(n);
		return SUCCESS;
	}
	public String queryAll(){
	
		list=nd.queryAll();
		return SUCCESS;
	}
	
	public String queryMy(){
		Map session=ActionContext.getContext().getSession();
		String author=(String) session.get("login");
		list=nd.queryMy(author);
		return SUCCESS;
	}
	public String queryOne(){
		n=nd.queryOne(id);
		return SUCCESS;
	}
	public String deleteOne(){
		nd.deletePost(id);
		return SUCCESS;
	}
	public String updateLoad(){
		n=nd.queryOne(id);
		return SUCCESS;
	}
	public String updatePost(){
		nd.updatePost(n);
		return SUCCESS;
	}
	public String postComment(){
		Map session=ActionContext.getContext().getSession();
		String author=(String) session.get("login");
		c.setAuthor(author);
		c.setPost(nd.queryOne(id));
		nd.postComment(c);
		return SUCCESS;
	}
	
}