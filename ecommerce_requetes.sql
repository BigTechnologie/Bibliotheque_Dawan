--1 Mettez à jour les prix unitaires des lignes de commande.

UPDATE ligne l 
JOIN produit p USING(idProduit)
SET l.pu = p.pu;


--2 Mettez à jour les totaux des commandes.


--3 Sélectionnez les noms complets des utilisateurs avec le nom en majuscules suivi du prénom séparés par un espace (alias NOM_Prenom). Tri dans l'ordre alphabétique.


--4 Dénombrez les utilisateurs dont le nom ne contient pas la lettre A (alias nb).


--5 Pour les utilisateurs dont le mot de passe comporte strictement moins de 6 caractères, sélectionnez l'email et le nombre de caractères du mot de passe (alias longueur_mdp). Tri sur la longueur du mot de passe en ordre descendant.


--6 Dénombrez les produits archivés (alias nb).


--7 Sélectionnez la valeur du stock (alias valeur_stock).


--8 Sélectionnez le montant du panier moyen (arrondi à 2 décimales, alias panier_moyen).


--9 Pour chaque catégorie, sélectionnez le nom et le nombre de produits (alias nb). Tri par nom et nombre de produits.

--10 Dénombrer les utilisateurs ayant commandé (alias nb).

--11 Sélectionnez le nom et le prénom des utilisateurs n'ayant jamais commandé.


--12 Sélectionnez les noms et quantités (alias ventes) des 2 produits les plus vendus.


--13 Sélectionnez la référence des produits n'ayant jamais été commandés. Tri par référence.

--14 Sélectionnez le nom de la catégorie dont aucun produit n'a été commandé.


--15 Sélectionnez le nom et le prénom des utilisateurs, l'id_commande et la date de commande des commandes remontant strictement à plus de 3 jours. Tri par nom puis prénom.


--16 Sélectionnez le nom et le prénom des utilisateurs (sans doublon) ayant commandé avant 08h00 ou après 20h00 exclus.


--17 Sélectionnez le nom de la catégorie (alias cat), le nom du produit, le prix unitaire, la quantité et le sous-total (alias sous_total) de chaque ligne de commande de l'utilisateur dont l'id_user est 3. Tri par nom de produit. Le produit sans catégorie doit apparaître.

--18 Sélectionnez le nom et le stock des produits dont le stock est inférieur à la moyenne des stocks.

--19 Supprimez les utilisateurs n'ayant pas commandé.

--20 Supprimez le produit le moins cher.


