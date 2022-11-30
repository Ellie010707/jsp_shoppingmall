package service;

import domain.UserVO;
import persistence.UserDAO;

public class UserService {

	UserDAO userDAO = new UserDAO();


	public String register(UserVO userVO) {
	  	if(userDAO.add(userVO)) return "가입 성공";
	  	  	else return null;
	}	
	
	public UserVO login(String id, String pw) {
		return userDAO.login(id, pw);
	}
}
