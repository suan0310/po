package com.bebe.spring.login.dao;

import com.bebe.spring.vo.UsersVO;

public interface LoginDAO {
	
	int selectUsers(UsersVO usersVO);
	
	int insertUsers(UsersVO usersVO);
	
	int idCheck(UsersVO usersVO);

	public UsersVO find_passwd(UsersVO usersVO);
	
	public UsersVO find_id(UsersVO usersVO);
}
