# Write your MySQL query statement below
WITH NumberSequences AS (
    SELECT
        id,
        num,
        LEAD(num, 1) OVER (ORDER BY id) AS next_num,
        LAG(num, 1) OVER (ORDER BY id) AS prev_num,
        LEAD(id, 1) OVER (ORDER BY id) AS next_id,
        LAG(id, 1) OVER (ORDER BY id) AS prev_id
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM NumberSequences
WHERE num = next_num AND num = prev_num
  AND next_id = id + 1 AND prev_id = id - 1;

