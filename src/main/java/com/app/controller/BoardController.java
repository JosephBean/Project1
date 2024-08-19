package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.model.BoardEntity;
import com.app.repository.BoardEntityRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@CrossOrigin(origins = "http://localhost:8080")
@RequestMapping("/board")
@RestController
public class BoardController {

	@Autowired
	private BoardEntityRepository bRepository;
	
	@PostMapping("/")
	public Page<BoardEntity> list(
			@RequestParam(name = "title", required = false, defaultValue = "") String title, 
			@PageableDefault(size = 3) Pageable pageable) {
			log.info("page : {}, title: {}", pageable, title);
		return bRepository.findByTitleContainingOrderByBoardNoDesc(title, pageable);
	}
	
}
