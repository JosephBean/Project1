package com.app.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity(name = "role")
@Table(name = "role2")
public class RoleEntity {
	
	@Id
    @Column(name="role_no")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int roleNo;

    @Column(name="role_nm", length = 20)
    private String roleNm;
    
    @ManyToMany(mappedBy = "roles")
    private List<UserEntity> users = new ArrayList<>();
       
}
