-- Questão 1:
SELECT COUNT("endDate") as "currentExperiences" 
FROM experiences;

-- Questão 2:
SELECT "userId" as id, COUNT("schoolId") as educations 
FROM educations 
GROUP BY "userId";

-- Questão 3:
SELECT u.name as writer, COUNT(t."writerId") as "testimonailCount" 
FROM testimonials t 
JOIN users u ON u.id=t."writerId" 
WHERE "writerId"=435 
GROUP BY u.name; 

-- Questão 4:
SELECT MAX(salary) as "maximumSalary", r.name as role 
FROM jobs JOIN roles r ON "roleId"=r.id  
WHERE active='true' 
GROUP BY r.name;
