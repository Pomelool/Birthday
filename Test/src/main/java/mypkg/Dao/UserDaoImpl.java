package mypkg.Dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import mypkg.Model.User;

@Transactional
@Repository
public class UserDaoImpl implements UserDao{
	@PersistenceContext
	private EntityManager entityManager;
	@Override
	public void addUser(User user) {
		entityManager.persist(user);
	}

}
