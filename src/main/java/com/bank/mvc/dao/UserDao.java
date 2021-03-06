package com.bank.mvc.dao;

import com.bank.mvc.models.User;

import java.util.Collection;

public interface UserDao {

    public Collection<User> getAll();

    public User getById(long userId);

    public void save(User user);

    public void delete(User user);

}
