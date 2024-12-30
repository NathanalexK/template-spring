<%@ page import="components.table.DetailsTable" %>
<%@ page import="org.project.boulangerie.model.ProduitFini" %>
<%@ page import="components.table.ModelTable" %>
<%@ page import="org.project.boulangerie.model.Recette" %>
<%@ page import="components.table.HtmlTable" %>

<%
    ProduitFini produitFini = (ProduitFini) request.getAttribute("produitFini");
    DetailsTable detailsTable = new DetailsTable();
    detailsTable.setTitle("Information du Produit");

    detailsTable.addRow("ID", produitFini.getId());
    detailsTable.addRow("Nom Produit", produitFini.getProduit().getNom());
    detailsTable.addRow("Categorie", produitFini.getCategorie().getNom());
    detailsTable.addRow("Unite", produitFini.getProduit().getUnite().getNom());
    detailsTable.addRow("Prix de Vente", produitFini.getProduit().getPrixVente());


    HtmlTable<Recette> table = new HtmlTable<>();
    table.setData(produitFini.getRecettes());
    table.addColumn("ID", recette -> recette.getId());
    table.addColumn("Ingredient", recette -> recette.getIngredient().getNomIngredient());
    table.addColumn("UniteLib", recette -> recette.getIngredient().getProduit().getUnite().getNom());
    table.addColumn("Quantite", recette -> recette.getQuantite());

%>

<div class="d-flex justify-content-center">
    <div class="w-50">
        <%=detailsTable.getHtml()%>
    </div>
</div>

<div class="mt-3">
    <div class="card">
        <div class="card-header">
            <h4>Liste des Ingredients</h4>
        </div>
        <div class="card-body">
            <%=table.getHtml()%>
        </div>
    </div>
</div>