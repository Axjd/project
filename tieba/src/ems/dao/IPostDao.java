package ems.dao;

import java.util.List;

import ems.vo.Post;
import ems.vo.Reply;

public interface IPostDao {
	public List<Post>queryAll();
	public Post queryOne(int id);
	public void postComment(Reply c);
	public void updatePost(Post n);
	public void deletePost(int id);

}
