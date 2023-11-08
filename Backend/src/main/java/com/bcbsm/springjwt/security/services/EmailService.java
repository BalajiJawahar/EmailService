package com.bcbsm.springjwt.security.services;

import javax.validation.constraints.Email;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmailService extends JpaRepository<Email, Integer> {
	public boolean sendEmail(Email mail);
	
//	public List<Email> getEmailList(List<Integer> ids);
	
}
