* Time: July 15 2020

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

Sample Output

```
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf
```
* Logic: Need to define B

* Solution 1:
* referred to https://nifannn.github.io/2018/05/31/SQL-%E7%AC%94%E8%AE%B0-Hackerrank-Binary-Tree-Nodes/

```
SELECT N, IF (P IS NULL, 'Root', IF ((SELECT COUNT(*) FROM BST WHERE P = B.N) > 0, 'Inner', 'Leaf')) from BST AS B ORDER BY N;
```

* Solution 2:

```
SELECT N, IF (P IS NULL,'Root', IF(B.N IN (SELECT P FROM BST), 'Inner', 'Leaf')) from BST AS B ORDER BY N;
```
