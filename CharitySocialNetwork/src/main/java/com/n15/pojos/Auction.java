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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

/**
 *
 * @author vohuy
 */
@Entity
@Table(name = "auction")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Auction.findAll", query = "SELECT a FROM Auction a"),
    @NamedQuery(name = "Auction.findByIdauction", query = "SELECT a FROM Auction a WHERE a.idauction = :idauction"),
    @NamedQuery(name = "Auction.findByPriceAuction", query = "SELECT a FROM Auction a WHERE a.priceAuction = :priceAuction")})
public class Auction implements Serializable {

    @JoinColumn(name = "status_id", referencedColumnName = "idstatus")
    @ManyToOne
    private Status statusId;

    @JoinColumn(name = "post_id", referencedColumnName = "id")
    @ManyToOne
    private Posts postId;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idauction")
    private Integer idauction;
    @Column(name = "price_auction")
    private Long priceAuction;
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ManyToOne
    private User userId;

    public Auction() {
    }

    public Auction(Integer idauction) {
        this.idauction = idauction;
    }

    public Integer getIdauction() {
        return idauction;
    }

    public void setIdauction(Integer idauction) {
        this.idauction = idauction;
    }

    public Long getPriceAuction() {
        return priceAuction;
    }

    public void setPriceAuction(Long priceAuction) {
        this.priceAuction = priceAuction;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idauction != null ? idauction.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Auction)) {
            return false;
        }
        Auction other = (Auction) object;
        if ((this.idauction == null && other.idauction != null) || (this.idauction != null && !this.idauction.equals(other.idauction))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.n15.pojos.Auction[ idauction=" + idauction + " ]";
    }

    public Posts getPostId() {
        return postId;
    }

    public void setPostId(Posts postId) {
        this.postId = postId;
    }

    public Status getStatusId() {
        return statusId;
    }

    public void setStatusId(Status statusId) {
        this.statusId = statusId;
    }
    
}
