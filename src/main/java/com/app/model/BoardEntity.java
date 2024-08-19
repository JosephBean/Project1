package com.app.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity(name = "board")
@Table(name = "board2")
public class BoardEntity extends BaseEntity {

	@Id
	@Column(name="board_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer boardNo;
	
	@Column(name = "board_title", length = 100, nullable = false)
	private String title;
	
	@Lob
	@Column(name = "board_content")
	private String content;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserEntity user;
	
}
