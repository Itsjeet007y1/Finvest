package finvestfx.app.dao;

import finvestfx.app.model.User;


public interface IUserDao {

	public int saveUser(User user);
	public User getUserByNameAndPassword(String un,String pwd);
}
