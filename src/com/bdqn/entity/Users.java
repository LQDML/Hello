package com.bdqn.entity;

public class Users {
    private Integer id;

    private String username;

    private String password;
    
    private int page;
    
    private int size;
    private String sort;
    private String order;
    
    

    public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public Users(int page, int size, String sort, String order) {
		super();
		this.page = page;
		this.size = size;
		this.sort = sort;
		this.order = order;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

	public Users(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public Users() {
		super();
	}

	public Users(Integer id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public Users(int page, int size) {
		super();
		this.page = page;
		this.size = size;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", username=" + username + ", password="
				+ password + "]";
	}
    
}