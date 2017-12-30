package de.starwit.ljprojectbuilder.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;


/**
 * Entity implementation class for Entity: CategoryEntity
 *
 */
@XmlRootElement
@Entity
@Table(name="CATEGORY")
public class CategoryEntity extends AbstractEntity {

	
	private static final long serialVersionUID = 1L;

	@NotNull
	private String name;
	
	private List<CodeTemplateEntity> templates;

	@Column(name="NAME", nullable = false, unique=true)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@XmlTransient
	@OneToMany(fetch=FetchType.LAZY, mappedBy="category")
	public List<CodeTemplateEntity> getTemplates() {
		return templates;
	}

	public void setTemplates(List<CodeTemplateEntity> templates) {
		this.templates = templates;
	}
   
}
