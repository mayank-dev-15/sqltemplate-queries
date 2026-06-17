-- sqltemplate-queries — Advanced Queries
WITH RECURSIVE tree AS(SELECT id,name,parent_id,1 as depth FROM categories WHERE parent_id IS NULL UNION ALL SELECT c.id,c.name,c.parent_id,ct.depth+1 FROM categories c JOIN tree ct ON c.parent_id=ct.id) SELECT * FROM tree;
SELECT user_id,amount,SUM(amount)OVER(PARTITION BY user_id ORDER BY created_at) as running_total,RANK()OVER(PARTITION BY user_id ORDER BY amount DESC)as rank FROM transactions;
INSERT INTO user_stats(user_id,login_count)VALUES(1,1)ON CONFLICT(user_id)DO UPDATE SET login_count=user_stats.login_count+1;
