package model;
// Generated 12 nov. 2016 16:07:01 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Activite generated by hbm2java
 */
public class Activite  implements java.io.Serializable {


     private String actId;
     private Niveau niveau;
     private String categorie;
     private Byte nombrePartc;
     private Set participants = new HashSet(0);
     private Set horaires = new HashSet(0);

    public Activite() {
    }

	
    public Activite(String actId, Niveau niveau, String categorie) {
        this.actId = actId;
        this.niveau = niveau;
        this.categorie = categorie;
    }
    public Activite(String actId, Niveau niveau, String categorie, Byte nombrePartc, Set participants, Set horaires) {
       this.actId = actId;
       this.niveau = niveau;
       this.categorie = categorie;
       this.nombrePartc = nombrePartc;
       this.participants = participants;
       this.horaires = horaires;
    }
   
    public String getActId() {
        return this.actId;
    }
    
    public void setActId(String actId) {
        this.actId = actId;
    }
    public Niveau getNiveau() {
        return this.niveau;
    }
    
    public void setNiveau(Niveau niveau) {
        this.niveau = niveau;
    }
    public String getCategorie() {
        return this.categorie;
    }
    
    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }
    public Byte getNombrePartc() {
        return this.nombrePartc;
    }
    
    public void setNombrePartc(Byte nombrePartc) {
        this.nombrePartc = nombrePartc;
    }
    public Set getParticipants() {
        return this.participants;
    }
    
    public void setParticipants(Set participants) {
        this.participants = participants;
    }
    public Set getHoraires() {
        return this.horaires;
    }
    
    public void setHoraires(Set horaires) {
        this.horaires = horaires;
    }




}


