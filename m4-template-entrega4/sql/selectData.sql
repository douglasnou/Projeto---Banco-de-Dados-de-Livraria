SELECT * FROM books;

SELECT * FROM books_categories WHERE "categoryId" = 3;

SELECT books."name" AS "bookName",
books."id" AS "bookId",
categories."name" AS "category",
categories."id" AS "categoryId"
FROM books JOIN books_categories ON books_categories."bookId" = books."id"
JOIN categories ON categories."id" = books_categories."categoryId";

SELECT books."name" AS "book", 
authors."name" AS "author", 
authors."bio"
FROM books JOIN authors ON authors."id" = books."authorId";