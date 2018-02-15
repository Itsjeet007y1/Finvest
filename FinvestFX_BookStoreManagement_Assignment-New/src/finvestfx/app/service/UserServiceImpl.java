package finvestfx.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finvestfx.app.dao.IUserDao;
import finvestfx.app.model.User;
import finvestfx.app.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao dao;
	
	@Override
	public int saveUser(User user) {
		return dao.saveUser(user);
	}

	@Override
	public User getUserByNameAndPassword(String un, String pwd) {
		return dao.getUserByNameAndPassword(un, pwd);
	}
}
