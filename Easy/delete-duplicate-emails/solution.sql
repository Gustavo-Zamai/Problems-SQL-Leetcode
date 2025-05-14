# Write your MySQL query statement below
DELETE 
    person1 
FROM 
    Person as person1, 
    Person as person2 
WHERE 
    person1.email = person2.email 
        AND person1.id > person2.id;