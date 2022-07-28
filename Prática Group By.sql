--------------------------------------------------------------------------------------
--Questão n°01

SELECT COUNT(id) AS "currentExperiences" 
FROM experiences 
WHERE "endDate" IS NOT NULL

--------------------------------------------------------------------------------------
--Questão n°02

SELECT users.id, COUNT(educations.id) AS educations
FROM users 
JOIN educations ON users.id = educations."userId"
GROUP BY users.id
ORDER BY educations DESC

--------------------------------------------------------------------------------------
--Questão n°03

SELECT users.name AS writer, COUNT(testimonials.id) AS "testimonialCount"
FROM users
JOIN testimonials ON users.id = testimonials."writerId"
WHERE users.id = '435'
GROUP BY users.name

--------------------------------------------------------------------------------------
--Questão n°04

SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM roles
JOIN jobs ON jobs."roleId" = roles.id
WHERE jobs.active = TRUE
GROUP BY roles.name
ORDER BY "maximumSalary" ASC

--------------------------------------------------------------------------------------
--Questão BONUS

SELECT schools.name AS school, courses.name AS course, COUNT(users.id) AS "studentsCount", educations.status AS role
FROM educations
JOIN schools ON educations."schoolId" = schools.id
JOIN courses ON educations."courseId" = courses.id
JOIN users ON educations."userId" = users.id
GROUP BY school, course, role
ORDER BY "studentsCount" DESC
LIMIT 3


