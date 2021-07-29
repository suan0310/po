package com.bebe.spring.login.service;

import com.bebe.spring.vo.UsersVO;

public interface LoginService {
	
	public int selectUsers(UsersVO usersVO);
	
	public int insertUsers(UsersVO usersVO);
	
	public int idCheck(UsersVO usersVO);
	
	public UsersVO find_passwd(UsersVO usersVO);
	
	public UsersVO find_id(UsersVO usersVO);
}
