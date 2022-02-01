/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.pojos;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author vohuy
 */
@Entity
@Table(name = "posts")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Posts.findAll", query = "SELECT p FROM Posts p"),
    @NamedQuery(name = "Posts.findById", query = "SELECT p FROM Posts p WHERE p.id = :id"),
    @NamedQuery(name = "Posts.findByImage", query = "SELECT p FROM Posts p WHERE p.image = :image"),
    @NamedQuery(name = "Posts.findByPublished", query = "SELECT p FROM Posts p WHERE p.published = :published"),
    @NamedQuery(name = "Posts.findByLike", query = "SELECT p FROM Posts p WHERE p.like = :like"),
    @NamedQuery(name = "Posts.findByTimeStart", query = "SELECT p FROM Posts p WHERE p.timeStart = :timeStart"),
    @NamedQuery(name = "Posts.findByTimeEnd", query = "SELECT p FROM Posts p WHERE p.timeEnd = :timeEnd"),
    @NamedQuery(name = "Posts.findByPrice", query = "SELECT p FROM Posts p WHERE p.price = :price")})
public class Posts implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Lob
    @Size(max = 65535)
    @Column(name = "content")
    private String content;
    @Size(max = 255)
    @Column(name = "image")
    private String image;
    @Column(name = "published")
    @Temporal(TemporalType.TIMESTAMP)
    private Date published;
    @Column(name = "like")
    private Integer like;
    @Column(name = "time_start")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeStart;
    @Column(name = "time_end")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeEnd;
    @Column(name = "price")
    private Long price;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "postId")
    private Collection<Comment> commentCollection;
    @JoinColumn(name = "usreid", referencedColumnName = "iduser")
    @ManyToOne
    private User usreid;

    public Posts() {
    }

    public Posts(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getPublished() {
        return published;
    }

    public void setPublished(Date published) {
        this.published = published;
    }

    public Integer getLike() {
        return like;
    }

    public void setLike(Integer like) {
        this.like = like;
    }

    public Date getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(Date timeStart) {
        this.timeStart = timeStart;
    }

    public Date getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(Date timeEnd) {
        this.timeEnd = timeEnd;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    @XmlTransient
    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
    }

    public User getUsreid() {
        return usreid;
    }

    public void setUsreid(User usreid) {
        this.usreid = usreid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Posts)) {
            return false;
        }
        Posts other = (Posts) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.n15.pojos.Posts[ id=" + id + " ]";
    }
    
}
