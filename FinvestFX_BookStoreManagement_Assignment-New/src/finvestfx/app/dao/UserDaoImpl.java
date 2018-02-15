package finvestfx.app.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import finvestfx.app.dao.IUserDao;
import finvestfx.app.model.User;

@Repository
public class UserDaoImpl implements IUserDao {

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public int saveUser(User user) {
		return (Integer)ht.save(user);
	}

	@Override
	public User getUserByNameAndPassword(String un, String pwd) {
		User user=null;
		String hql="from finvestfx.app.model.User where ( userEmail=? or userContact=? ) and userPwd=?";
		List<User> list=ht.find(hql,un,un,pwd);
		if(list!=null && list.size()>0){
			user=list.get(0);
		}
		return user;
	}
}
