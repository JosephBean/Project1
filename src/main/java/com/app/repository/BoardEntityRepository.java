package com.app.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import com.app.model.BoardEntity;

public interface BoardEntityRepository extends JpaRepository<BoardEntity, Integer> {
	
	Page<BoardEntity> findByTitleContainingOrderByBoardNoDesc(String title, Pageable pageable);
	
}
