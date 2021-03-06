package model;
// Generated 12 nov. 2016 16:07:01 by Hibernate Tools 4.3.1



/**
 * Horaire generated by hbm2java
 */
public class Horaire  implements java.io.Serializable {


     private HoraireId id;
     private Creneau creneau;
     private Salle salle;
     private Activite activite;

    public Horaire() {
    }

	
    public Horaire(HoraireId id, Creneau creneau, Salle salle) {
        this.id = id;
        this.creneau = creneau;
        this.salle = salle;
    }
    public Horaire(HoraireId id, Creneau creneau, Salle salle, Activite activite) {
       this.id = id;
       this.creneau = creneau;
       this.salle = salle;
       this.activite = activite;
    }
   
    public HoraireId getId() {
        return this.id;
    }
    
    public void setId(HoraireId id) {
        this.id = id;
    }
    public Creneau getCreneau() {
        return this.creneau;
    }
    
    public void setCreneau(Creneau creneau) {
        this.creneau = creneau;
    }
    public Salle getSalle() {
        return this.salle;
    }
    
    public void setSalle(Salle salle) {
        this.salle = salle;
    }
    public Activite getActivite() {
        return this.activite;
    }
    
    public void setActivite(Activite activite) {
        this.activite = activite;
    }




}


