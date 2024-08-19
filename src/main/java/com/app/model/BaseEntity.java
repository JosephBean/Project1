package com.app.model;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;

@Getter
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public class BaseEntity {

	@Column(name = "del_yn", nullable = false, columnDefinition = "boolean default false")
	private boolean delYn;
	
	@Column(name = "reg_date")
	@CreationTimestamp
	private LocalDateTime regDate;
	
	@Column(name = "chg_date")
	@LastModifiedDate
	private LocalDateTime chgDate;
	
}
