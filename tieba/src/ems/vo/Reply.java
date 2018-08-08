package ems.vo;

import java.sql.Timestamp;

/**
 * Reply entity. @author MyEclipse Persistence Tools
 */

public class Reply implements java.io.Serializable {

	// Fields

	private Integer id;
	private Post post;
	private User user;
	private String author;
	private String content;
	private Timestamp replytime;

	// Constructors

	/** default constructor */
	public Reply() {
	}

	/** minimal constructor */
	public Reply(String content) {
		this.content = content;
	}

	/** full constructor */
	public Reply(Post post, User user, String author, String content, Timestamp replytime) {
		this.post = post;
		this.user = user;
		this.author = author;
		this.content = content;
		this.replytime = replytime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Post getPost() {
		return this.post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getReplytime() {
		return this.replytime;
	}

	public void setReplytime(Timestamp replytime) {
		this.replytime = replytime;
	}

}