<%--<%@ page import="org.project.imeuble.mock.SidebarMock" %>--%>
<%@ page import="components.menu.Sidebar" %>
<%@ page import="components.menu.Menu" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Sidebar sidebar = new Sidebar()
            .addMenu(
                    new Menu("Employe")
                            .withIcon("bx bx-group")
                            .addSubmenu(
                                    new Menu("Saisie Employe")
                                            .withIcon("bx bx-plus")
                                            .withLien("/emp/form")
                            )
                            .addSubmenu(
                                    new Menu("Liste Employe")
                                            .withIcon("bx bx-list-ul")
                                            .withSubmenus(
                                                new Menu("test")
                                            )
//                                            .withLien("/emp/list")
                            )
            )
            .addMenu(
                    new Menu("Produits")
                            .withIcon("bx bx-briefcase-alt-2")
                            .addSubmenu(
                                    new Menu("Ingredients")
                                            .withIcon("bx bxs-flask")
                                            .addSubmenu(
                                                new Menu("Saisie Ingredient")
                                                        .withLien("/ingredient/form")
                                            )
                                            .addSubmenu(
                                                new Menu("Lister Ingredients")
                                                        .withLien("/ingredient/list")
                                            )
                            )
                            .addSubmenu(
                                    new Menu("Produits Finis")
                                            .withIcon("bx bx-dish")
                                            .addSubmenu(
                                                    new Menu("Saisie Produit Fini")
                                                            .withLien("/produit-fini/form")
//                                                        .withIcon("bx bx-plus")
                                            )
                                            .addSubmenu(
                                                    new Menu("Lister Produits Finis")
                                                            .withLien("/produit-fini/list")
//                                                        .withIcon("bx bx-plus")
                                            )
                            )
                            .addSubmenu(
                                new Menu("Lister Produits")
                                        .withIcon("bx bx-list-ol")
                                        .withLien("/produit/list")
                            )
            )
            .addMenu(
                new Menu("Achats")
                        .withIcon("bx bx-cart-alt")
                        .addSubmenu(
                            new Menu("Sasie achat")
                                    .withIcon("bx bx-plus")
                                    .withLien("/achat/form")
                        )
                        .addSubmenu(
                            new Menu("Lister achat")
                                    .withIcon("bx bx-list-ol")
                                    .withLien("/achat/list")
                        )
            )
            .addMenu(
                new Menu("Vente")
                        .withIcon("bx bx-box")
                        .addSubmenu(
                            new Menu("Saisie vente")
                                    .withIcon("bx bx-plus")
                                    .withLien("/vente/form")
                        )
                        .addSubmenu(
                            new Menu("Lister vente")
                                    .withIcon("bx bx-list-ol")
                                    .withLien("/vente/list")
                        )
            )
            .addMenu(
                new Menu("Stock")
                        .withIcon("bx bx-cube")
            )
            .addMenu(
                new Menu("Configuration")
                        .withIcon("bx bx-cog")
                        .addSubmenu(
                            new Menu("Type Produit")
                                    .withIcon("bx bxs-shapes")
                                    .addSubmenu(
                                        new Menu("Saisie type produit")
                                                .withLien("/type-produit/form")
                                    )
                                    .addSubmenu(
                                        new Menu("Lister type produit")
                                                .withLien("/type-produit/list")
                                    )
                        )
                        .addSubmenu(
                            new Menu("Categorie Produit")
                                    .withIcon("bx bx-category")
                                    .addSubmenu(
                                        new Menu("Saisie categorie produit")
                                                .withLien("/categorie-produit/form")
                                    )
                                    .addSubmenu(
                                        new Menu("Lister categorie produit")
                                                .withLien("/categorie-produit/list")
                                    )
                        )
                        .addSubmenu(
                            new Menu("Unite Produit")
                                    .withIcon("bx bx-ruler")
                                    .addSubmenu(
                                        new Menu("Saisie unite produit")
                                                .withLien("/unite/form")
                                    )
                                    .addSubmenu(
                                        new Menu("Lister unite produit")
                                                .withLien("/unite/list")
                                    )
                        )
            )


            ;
%>

<%=sidebar.getHtml(request, "")%>


