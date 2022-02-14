/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.pojos;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author vohuy
 */
@Entity
@Table(name = "images_product")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ImagesProduct.findAll", query = "SELECT i FROM ImagesProduct i"),
    @NamedQuery(name = "ImagesProduct.findByIdimagesProduct", query = "SELECT i FROM ImagesProduct i WHERE i.idimagesProduct = :idimagesProduct"),
    @NamedQuery(name = "ImagesProduct.findByImage", query = "SELECT i FROM ImagesProduct i WHERE i.image = :image")})
public class ImagesProduct implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idimages_product")
    private Integer idimagesProduct;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "image")
    private String image;
    @JoinColumn(name = "post_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.EAGER,optional = false)
    private Posts post;

    public ImagesProduct() {
    }

    public ImagesProduct(Integer idimagesProduct) {
        this.idimagesProduct = idimagesProduct;
    }

    public ImagesProduct(Integer idimagesProduct, String image) {
        this.idimagesProduct = idimagesProduct;
        this.image = image;
    }

    public Integer getIdimagesProduct() {
        return idimagesProduct;
    }

    public void setIdimagesProduct(Integer idimagesProduct) {
        this.idimagesProduct = idimagesProduct;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Posts getPost() {
        return post;
    }

    public void setPost(Posts post) {
        this.post = post;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idimagesProduct != null ? idimagesProduct.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ImagesProduct)) {
            return false;
        }
        ImagesProduct other = (ImagesProduct) object;
        if ((this.idimagesProduct == null && other.idimagesProduct != null) || (this.idimagesProduct != null && !this.idimagesProduct.equals(other.idimagesProduct))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.n15.pojos.ImagesProduct[ idimagesProduct=" + idimagesProduct + " ]";
    }
    
}
