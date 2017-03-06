package com.bdqn.entity;

import java.util.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class Person {
    private Integer id;
    @NotEmpty(message="{username.name}")
    private String username;
    @Length(min=5,max=16,message="{password.word}")
    private String password;

    private Integer ages;
    @DateTimeFormat(pattern = "yyyy年MM月dd日 HH时mm分ss秒")
    private Date birthday;

    private String phonenumber;

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

    public Integer getAges() {
        return ages;
    }

    public void setAges(Integer ages) {
        this.ages = ages;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber == null ? null : phonenumber.trim();
    }

	@Override
	public String toString() {
		return "Person [id=" + id + ", username=" + username + ", password="
				+ password + ", ages=" + ages + ", birthday=" + birthday
				+ ", phonenumber=" + phonenumber + "]";
	}
    
}