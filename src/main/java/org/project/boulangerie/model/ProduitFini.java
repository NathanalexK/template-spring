package org.project.boulangerie.model;

//import annotations.forms.FormRepeat;
import annotations.forms.Input;
import annotations.forms.Select;
import annotations.forms.SkipInput;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "produit_fini")
public class ProduitFini {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @ColumnDefault("nextval('produit_fini_id_seq')")
    @Column(name = "id", nullable = false)
    @Input(type =  "hidden")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_produit", nullable = false)
    @SkipInput
    private Produit produit;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_categorie")
    @Select
    private CategorieProduit categorie;





    @OneToMany(mappedBy = "produitFini", cascade = CascadeType.ALL)
//    @FormRepeat(formClass = Recette.class, title = "Ajout Ingredients", rows = 2)
    private List<Recette> recettes;

    @Transient
    @Input(type = "text")
    private String nom;

    @Transient
    @Input(type = "number", step = "0.01")
    private Double prixVente;


    public Double getPrixVente() {
        if(this.getProduit() != null) {
            return this.getProduit().getPrixVente();
        }
        return prixVente;
    }

    public String getNom() {
        if(this.getProduit() != null) {
            return this.getProduit().getNom();
        }
        return nom;
    }
}