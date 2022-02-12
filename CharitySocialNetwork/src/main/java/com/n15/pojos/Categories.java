/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.pojos;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author vohuy
 */
@Entity
@Table(name = "categories")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Categories.findAll", query = "SELECT c FROM Categories c"),
    @NamedQuery(name = "Categories.findByIdcategories", query = "SELECT c FROM Categories c WHERE c.idcategories = :idcategories"),
    @NamedQuery(name = "Categories.findByName", query = "SELECT c FROM Categories c WHERE c.name = :name"),
    @NamedQuery(name = "Categories.findByImages", query = "SELECT c FROM Categories c WHERE c.images = :images")})
public class Categories implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcategories")
    private Integer idcategories;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    @Size(max = 255)
    @Column(name = "images")
    private String images;
    @OneToMany(mappedBy = "category")
    private Collection<Posts> postsCollection;

    public Categories() {
    }

    public Categories(Integer idcategories) {
        this.idcategories = idcategories;
    }

    public Categories(Integer idcategories, String name) {
        this.idcategories = idcategories;
        this.name = name;
    }

    public Integer getIdcategories() {
        return idcategories;
    }

    public void setIdcategories(Integer idcategories) {
        this.idcategories = idcategories;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    @XmlTransient
    public Collection<Posts> getPostsCollection() {
        return postsCollection;
    }

    public void setPostsCollection(Collection<Posts> postsCollection) {
        this.postsCollection = postsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcategories != null ? idcategories.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Categories)) {
            return false;
        }
        Categories other = (Categories) object;
        if ((this.idcategories == null && other.idcategories != null) || (this.idcategories != null && !this.idcategories.equals(other.idcategories))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.n15.pojos.Categories[ idcategories=" + idcategories + " ]";
    }
    
}
