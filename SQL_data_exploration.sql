#Replace NULL Data with 0
UPDATE portfolio-project-334404.Gamejam_Test.Revenue_transformed
SET Revenue_ID01 = 0
WHERE Revenue_ID01 is null

UPDATE portfolio-project-334404.Gamejam_Test.Revenue_transformed
SET Revenue_ID02 = 0
WHERE Revenue_ID02 is null

UPDATE portfolio-project-334404.Gamejam_Test.Revenue_transformed
SET Revenue_ID03 = 0
WHERE Revenue_ID03 is null

UPDATE portfolio-project-334404.Gamejam_Test.Revenue_transformed
SET Revenue_ID04 = 0
WHERE Revenue_ID04 is null
#Check the result
SELECT *
FROM `portfolio-project-334404.Gamejam_Test.Revenue_transformed`
ORDER BY 1
#Find Revenue by day
SELECT Day, Revenue_ID01 + Revenue_ID02 + Revenue_ID03 + Revenue_ID04 as Day_revenue
FROM `portfolio-project-334404.Gamejam_Test.Revenue_transformed`
ORDER BY 1
#Insert new column
UPDATE portfolio-project-334404.Gamejam_Test.Revenue_transformed
SET Day_revenue = Revenue_ID01 + Revenue_ID02 + Revenue_ID03 + Revenue_ID04
WHERE Revenue_ID01 IS NOT NULL
#Check result
SELECT *
FROM `portfolio-project-334404.Gamejam_Test.Revenue_transformed`
ORDER BY 1
#Join 2 tables for overview
SELECT *
FROM `portfolio-project-334404.Gamejam_Test.Revenue_transformed` as a
LEFT JOIN `portfolio-project-334404.Gamejam_Test.Campaign` as b
ON a.day = b.day
ORDER BY 1









