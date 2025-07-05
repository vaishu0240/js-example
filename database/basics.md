## What is a Database?
- A **database** is an organized collection of data stored electronically in a system.
- It is used to **efficiently store, retrieve, and manage data**.

## What is ACID property in DBMS?
### Atomicity:
- It means that either the entire transaction completes fully or doesn't execute at all.
- **Commit** If the transaction is successful, the changes are permanently applied.
- **Abort/Rollback** If the transaction fails, any changes made during the transaction are discarded.
### Consistency:
- Maintaining Valid Data States.
- **Consistency** ensures that the database always follows rules, constraints, and **valid relationships — before and after a transaction**.
### Isolation;
- Transactions occur independently without interference.
- **Isolation** ensures that each transaction acts as if it is the **only one running, even when multiple transactions happen at the same time.**
### Durability:
- **Durability** guarantees that once a transaction is committed, its changes are never lost, even if the system crashes right after.

## What is Normalization?
- **Normalization** is the process of organizing data in a database to reduce redundancy **(duplicate data)** and improve data **integrity**.
- It involves **dividing large tables into smaller** ones and defining relationships between them.
**1NF**   Remove repeating groups. All values should be atomic (one value per cell). 
**2NF**   Remove partial dependency (non-key depends on part of a composite key).    
**3NF**   Remove transitive dependency (non-key depends on another non-key).      

## DDL:
- Used to **define database objects** like tables, indexes, views, etc.
- Changes made using DDL affect the **structure of the database.**
### Types of DDL Statements
- **CREATE:** It is used to **create** objects in the database, such as **tables, views, stored procedures,** and more.
- **ALTER:** It is used to **modify** the **structure of an existing database object.**
- **DROP:** It is used to **delete an entire object** or part of an object from the database.
- **TRUNCATE:** Used to **delete all records from a table** but does not delete the table structure.
- **RENAME:** Used to **rename** an existing database object.

## DML:
- Used to manipulate data **within the database**.
- Changes made using DML affect the **data stored in the database.**
- DML statements are transactional, meaning they can be rolled back if necessary.
### Types of DML Statements
- **INSERT:** Used to **add new records to a database table.**
- **UPDATE:** Used to **modify existing records** in a database table.
- **DELETE:** Used to **delete existing records** from a database table.
- **MERGE:** Used to **combine data from two or more tables into one.**
- **SELECT:** Used to **retrieve data** from one or more tables in a database.
- **CALL:** Used to call a stored procedure or function.

## SQL joins:
- INNER JOIN   **Only matching rows**                        
- LEFT JOIN     **All from left table + matches**                 
- RIGHT JOIN    **All from right table + matches**                
- FULL JOIN     **All rows from both tables** (matched/unmatched) 
- NATURAL JOIN  **Auto-match** columns with same name             

