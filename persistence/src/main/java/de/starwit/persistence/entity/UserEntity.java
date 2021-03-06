package de.starwit.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@Entity
@Table(name = "ALLOWEDUSER")
public class UserEntity extends AbstractEntity<Long> {

    public UserEntity(String username) {
        this.username = username;
    }

    public UserEntity() {
    }

 	@Column(name = "USERALIAS", nullable = false, unique = true)
    private String username;

    @Enumerated(EnumType.STRING)
	@Column(name = "USERROLE", nullable = false, unique = true)
    private Role role;

     public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
