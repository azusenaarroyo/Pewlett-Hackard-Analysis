# Pewlett Hackard Analysis with SQL

## Overview of the Analysis
Pewlett Hackard is preparing for the "silver tsunami" as many current employee are reaching retirement age. The upcoming retirement will leave thousands of job openings. The goal of this analysis is to determine the number of retiring employees per title, and identify the employees who are eligible to participate in a mentorship program.

## Results
* There are a total of 90,398 employees projected to retire.
* About 33% (29,414) of the employees projected to retire are Senior Engineers.
* About 31% (28,254) of the employees projected to retire are Senior Staff.
* There are 1,549 employees eligible for the mentorship program.

## Summary
* It is hard to tell how many roles will need to be filled as the "silver tsunami" begins, because there is no absolute indicator that someone will retire, not even age. Some people work past retirement age, and others retire early. However, we can prepare year to year and build a query to pull data on retiring employees by title and age to get a good representation to base future projections on. Right now, the query includes a range of about four years (01/01/1952 to 12/31/1955). Perhaps, if we provide data year to year, we could narrow down the focus on the amount of employees by title we need to focus on mentoring in the Mentorship Program by year. Reference the table below which will show the number of employees born in 1952 who are expected to retire. 

  <img width="225" alt="Retiring_1952_titles" src="https://user-images.githubusercontent.com/91927712/145349907-bb532afb-9ef9-435c-9dfe-12524a622c06.png">

* There are 286 Senior Engineers, 406 Senior Staff, and 730 Staff eligible for the Mentorship program. At the current rate, there would be one Senior Engineer Mentor for every 103 employees, one Senior Staff Mentor for every 70 employees, and one Staff Mentor for every 17 employees needing to be replaced. There are not enough employees eligible in the Mentorship program right now. I would suggest expanding the Mentorship Program eligibility to employees born outside of the year 1965. Perhaps, expanding the eligibility to to a range of years, instead of just one year. Reference the table below to see how many employees are eligible for the mentorship program when we expand the eligibility requirement of birth year from 1965 to also encompass employees born in 1964. 

  <img width="227" alt="mentorship_eligibility_1964_1965" src="https://user-images.githubusercontent.com/91927712/145349919-121016cb-0a74-46f6-9bab-72ee80797365.png">
