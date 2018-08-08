package ems.dao;

import ems.vo.Post;
import ems.vo.User;

public interface IUserDao {
	public boolean login(User u) ;
	public void register(User u);
	public void updateU(User u);
	public User queryOne(String author);
}
