package finvestfx.app.service;

import finvestfx.app.model.User;

public interface IUserService {
	public int saveUser(User user);
	public User getUserByNameAndPassword(String un,String pwd);
}
