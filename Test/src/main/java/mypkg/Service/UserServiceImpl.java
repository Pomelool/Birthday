package mypkg.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mypkg.Dao.UserDao;
import mypkg.Model.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	@Override
	public synchronized boolean addUser(User user) {
		userDao.addUser(user);
		return true;
	}

}
