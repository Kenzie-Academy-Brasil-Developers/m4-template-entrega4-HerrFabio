SELECT * FROM books;

SELECT b.*
FROM books b
JOIN books_categories bc ON b.id = bc."bookId"
JOIN categories c ON bc."categoryId" = c.id
WHERE c.name = 'Fantasia';

SELECT 
    b.id AS book_id,
    b.name AS book_name,
    b.pages AS book_pages,
    b."createdAt" AS book_createdAt,
    b."updatedAt" AS book_updatedAt,
    b."authorId" AS book_authorId,
    c.id AS category_id,
    c.name AS category_name,
    c."createdAt" AS category_createdAt,
    c."updatedAt" AS category_updatedAt
FROM 
    books b
JOIN 
    books_categories bc ON b.id = bc."bookId"
JOIN 
    categories c ON bc."categoryId" = c.id;


SELECT 
    b.id AS book_id,
    b.name AS book_name,
    b.pages AS book_pages,
    b."createdAt" AS book_createdAt,
    b."updatedAt" AS book_updatedAt,
    b."authorId" AS book_authorId,
    a.id AS author_id,
    a.name AS author_name,
    a.bio AS author_bio
FROM 
    books b
JOIN 
    authors a ON b."authorId" = a.id
WHERE 
    b.name = 'Harry Potter';




