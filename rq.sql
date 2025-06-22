SELECT 
    l.titre,
    a.nom AS auteur,
    COUNT(e.id) AS nb_emprunts,
    MAX(e.date_emprunt) AS dernier_emprunt
FROM Livres l JOIN Auteurs a ON l.auteur_id = a.id
              JOIN Emprunts e ON l.id = e.livre_id
GROUP BY l.id, l.titre, a.nom
ORDER BY nb_emprunts DESC
LIMIT 5;
