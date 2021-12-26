# Pewlett-Hackard-Analysis

## Overview
In this deliverable, Bobby was tasked to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then we had to write a report that summarizes our results and helps prepare Bobby's managers for the "Silver Tsunami" as many employees are reaching retirement age.

### Deliverable 1: The Number of Retiring Employees by Title
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.

### Deliverable 2: The Employees Eligible for the Mentorship Program
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

## Results with detail analysis:
### Deliverable 1:
1. A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.

![Diliv 1.1](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/diliv1.1.png)

![Table 1](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/table%201.1.png)


2. A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title.

![Diliv 1.2](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/diliv1.2.png)

![Table 1.2](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/table%201.2.png)


3. A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title.

![Diliv 1.3](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/diliv1.3.png)

![Table 1.3](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/table%201.3.png)


### Deliverable 2:
1. A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965.

![Diliv 2.1](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/diliv2.1.png)

![Table 2.1](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/table%202.1.png)

- 300,024 employees in the company are eligible for retirement.
- The department with the most retirees is Development (25%) followed by Production (22%)
- There are only 1,940 employees elibible for the mentorship program
- The results from the analysis show that 29,914 Senior Engineers, and 28,254 Senior Staff will be eligible to retire soon. Given that there are 90,398 employees eligible to retire, a large percent are senior level will be lost which could return in a serious understaffing problem and a general lowering of skilled workers within the company.

![Eligible](https://github.com/Iffadanwar/Pewlett-Hackard-Analysis/blob/main/Images/mentorship%20eligibility%20by%20title.png)


## Summary:
Based on the results, Pewlett Hackard is facing over 90,000 vacant positions of the 510,000 employees company wide. Due to the low number of employees currently eligible for mentorship to train and replace the 90,000 soon to retire employees/ managment staff, the quality and work force of the caompany faces a major decline ove the comming few years.

Age based queries can be ran to determine the oldest and youngest departments and prioritize mentorship with the oldest departments. This could potentially minimize turnover impact.

The campany should also hire a large amount of raw recruits from college as well as they can be most easliy trained. That being said about 25% of the force being hired should be experienced as to minize the loss of quality overall.
