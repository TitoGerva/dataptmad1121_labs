### Challenge 1 ###

SELECT au.au_id AS [AUTHOR ID], 
au.au_lname AS [LAST NAME], 
au.au_Fname AS [FIRST NAME], 
tt.title AS [TITLE], 
pbs.pub_name AS [PUBLISHER]
FROM authors AS au
    INNER JOIN titleauthor AS ttau ON ttau.au_id = au.au_id
    INNER JOIN titles AS tt ON tt.title_id = ttau.title_id
    INNER JOIN publishers AS pbs ON pbs.pub_id = tt.pub_id
ORDER BY [AUTHOR ID]

### Challenge 2 ###

SELECT au.au_id AS [AUTHOR ID], 
au.au_lname AS [LAST NAME], 
au.au_Fname AS [FIRST NAME], 
tt.title AS [TITLE], 
pbs.pub_name AS [PUBLISHER], 
COUNT (DISTINCT tt.title) AS [TITTLE COUNT] 
FROM authors AS au
    INNER JOIN titleauthor AS ttau ON ttau.au_id = au.au_id
    INNER JOIN titles AS tt ON tt.title_id = ttau.title_id
    INNER JOIN publishers AS pbs ON pbs.pub_id = tt.pub_id
GROUP BY au.au_id, au.au_lname, au.au_Fname, pbs.pub_name
ORDER BY 1 DESC

### Challenge 3 ###

SELECT TOP(3) a.au_id AS [AUTHOR ID], 
a.au_lname AS [LAST NAME], 
a.au_fname AS [FIRST NAME], 
SUM(s.qty) AS [TOTAL]
FROM authors as a
    INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN sales as s ON ta.title_id = s.title_id
GROUP BY a.au_id, a.au_lname, a.au_fname
ORDER BY 4 DESC

### Challenge 4 ###

SELECT a.au_id AS [AUTHOR ID], 
a.au_lname AS [LAST NAME], 
a.au_fname AS [FIRST NAME], 
ISNULL(SUM(s.qty),0) AS [TOTAL]
FROM authors as a
    FULL JOIN titleauthor AS ta ON a.au_id = ta.au_id
    FULL JOIN sales as s ON ta.title_id = s.title_id
GROUP BY a.au_id, a.au_lname, a.au_fname
ORDER BY 4 DESC