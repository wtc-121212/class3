USE bookshop;

-- Q1：查询库存为 0 的书名和库存
-- 预期结果如图
SELECT title, stock
FROM books
WHERE stock = 0;

-- Q2：按价格降序查询前三本；同价时按 id 升序
-- 预期结果如图
SELECT id, title, price
FROM books
ORDER BY price DESC, id ASC
LIMIT 3;

-- Q3：查询价格在 20 到 40 之间的书，包含 20 和 40
-- 预期结果如图
SELECT id, title, price
FROM books
WHERE price BETWEEN 20 AND 40
ORDER BY id;

-- Q4：JOIN 查询每本书的书名、作者名和价格
-- 预期结果如图
SELECT b.title, a.name AS author, b.price
FROM books AS b
JOIN authors AS a ON b.author_id = a.id
ORDER BY b.id;

-- Q5：先查询《三体》，再把库存减 1，最后再次查询
-- 预期结果如图
SELECT id, title, stock
FROM books
WHERE id = 1;

UPDATE books
SET stock = stock - 1
WHERE id = 1 AND stock > 0;

SELECT id, title, stock
FROM books
WHERE id = 1;


