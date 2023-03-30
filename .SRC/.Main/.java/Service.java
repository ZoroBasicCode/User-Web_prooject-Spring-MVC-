package org.SRK.UserApp.service;

import org.SRK.UserApp.dao.Userdao;
import org.SRK.UserApp.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	private Userdao dao;
	
	public User saveUser(User user) {
		return dao.saveUser(user);
	}
	public User updateUser(User user)
	{
		return dao.updateUser(user);
	}
	public User fetchUser(int id) {
		return dao.fetchUser(id);
	}
	public User upid(int id) {
		return dao.upid(id);
	}
	public User verify(long phon,String pasw) {
		return dao.verify(phon, pasw);
	}
	public boolean delete(int id) {
		return dao.delete(id);
	}
}
