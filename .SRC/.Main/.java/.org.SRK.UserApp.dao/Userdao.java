package org.SRK.UserApp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.SRK.UserApp.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Userdao {
	@Autowired
	EntityManager m;
	public User saveUser(User user) {
		EntityTransaction t=m.getTransaction();
		m.persist(user);
		t.begin();
		t.commit();
		return user;
	}
	public User updateUser(User user)
	{
		EntityTransaction t=m.getTransaction();
		m.merge(user);
		t.begin();
		t.commit();
		return user;
	}
	public User upid(int id) {
		EntityTransaction t=m.getTransaction();
		User us=m.find(User.class, id);
		m.merge(us);
		t.begin();
		t.commit();
		return us;
	}
	public User fetchUser(int id) {
		return m.find(User.class, id);
	}
	public User verify(long phon,String pasw) {
		String qr="select u from User u where u.phon=?1 and u.pasw=?2";
		Query q=m.createQuery(qr);
		q.setParameter(1, phon);
		q.setParameter(2, pasw);
		List<User> user=q.getResultList();
		if(user.size()>0) {
			return user.get(0);
		}
		return null;
	}
	public boolean delete(int id) {
		EntityTransaction t=m.getTransaction();
		User u=m.find(User.class, id);
		if(u!=null) {
			m.remove(u);
			t.begin();
			t.commit();
			return true;
		}
		return false;
	}
}
