package ems.action;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import ems.dao.UserDaoImpl;
import ems.vo.User;
import ems.vo.User;

public class UserAction extends ActionSupport {

	User u;
	String info;
	private String checkCode;
	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}
    
	String list;
	public String getList() {
		return list;
	}

	public void setList(String list) {
		this.list = list;
	}
	String username;
	char sex;
	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	String password;
	UserDaoImpl userDao;
	

	public UserDaoImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}

	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		
				
		return SUCCESS;
	
	}
	public String login(){
		HttpSession session1 = ServletActionContext.getRequest().getSession();
        String checkCode2 = (String)session1.getAttribute("checkCode");
        if(!checkCode.equals(checkCode2))
        {
        	addFieldError(checkCode, "输入的验证码不正确,请重新输入");return INPUT;
        }
        else{
		if(userDao.login(u)){
			Map session=ActionContext.getContext().getSession();
			session.put("login",u.getUsername());
			return SUCCESS;
		}else{
			info ="用户名或密码错误";
			return INPUT;
		 }	
        }
		
	}
	public String logout(){
		Map session=ActionContext.getContext().getSession();
		session.remove("login");
		session.remove("checkCode");
		return SUCCESS;
		}	
	public String register(){
		HttpSession session1 = ServletActionContext.getRequest().getSession();
        String checkCode2 = (String)session1.getAttribute("checkCode");
        if(!checkCode.equals(checkCode2))
        {
        	addFieldError(checkCode, "输入的验证码不正确,请重新输入");return INPUT;
        }
        else{
		userDao.register(u);
		return SUCCESS;
        }

	}
	public String updateUser(){
		Map session=ActionContext.getContext().getSession();
		String author=(String) session.get("login");
		u=userDao.queryOne(author);
		return SUCCESS;
	}
	public String updateU(){
		userDao.updateU(u);
		return SUCCESS;
	}
	
}