package com.app.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import com.app.model.UserEntity;

public interface UserEntityRepository extends JpaRepository<UserEntity, Integer> {
	
	public Page<UserEntity> findByUserNmContainingOrderByUserIdDesc(String userNm, Pageable pageable);
	
}
