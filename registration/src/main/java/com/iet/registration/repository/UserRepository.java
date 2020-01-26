package com.iet.registration.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.iet.registration.bean.User;
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
