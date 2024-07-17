# Exercise-Exploratory-Analysis-With-SQL
A detailed examination of exercise data, focusing on different exercise types and their characteristics. The analysis includes variables like Difficulty Level, Target Muscle Group, Prime Mover Muscle, Primary Equipment, and Body Region for developing a Home Workout Application.

## Table of Contents
* [Dataset Overview](https://github.com/devanshijbhatt/Exercise-Exploratory-Analysis-With-SQL/edit/main/README.md#dataset-overview)
* [Importing Dataset Into PostgreSQL](https://github.com/devanshijbhatt/Exercise-Exploratory-Analysis-With-SQL/edit/main/README.md#importing-dataset-into-postgresql)
* [Analysis](https://github.com/devanshijbhatt/Exercise-Exploratory-Analysis-With-SQL/edit/main/README.md#analysis)
  
## Dataset Overview
* Data Source: Strength to Overcome, Link: https://strengthtoovercome.com/functional-fitness-exercise-database
* Rows: 1749 Col: 29
* Many null values and unwanted columns were there which were discarded at the time of cleaning and sorting data.
* This dataset was made concise with 432 rows and 10 columns for developing a Home Workout Application with only 3 difficulty level which are: Beginner, Intermediate and Advanced
* The updated dataset is also shared in the files section

## Importing dataset into PostgreSQL
In this project, I am using pgAdmin 4 v8 to import the dataset. To directly import the original Excel file, it is essential to first create a table in the database. I have named the table "Fitness" on my server. The columns must be predefined with appropriate data types. Once the table is created, you can proceed to import the dataset file.

## Analysis
These are the questions for Exploratory Data Analysis:

1. What are the most common exercises in the dataset?
2. What are the least common exercises in the dataset?
3. How many exercises have a short YouTube demonstration?
4. How many exercises have an in-depth YouTube explanation?
5. Are there exercises that have both short demonstrations and in-depth explanations?
6. What is the distribution of difficulty levels among the exercises?
7. Are there specific exercises associated with higher difficulty levels?
8. What are the most commonly targeted muscle groups?
9. What are the most common prime mover muscles in the exercises?
10. Are there muscle groups that are targeted more frequently than others?
11. What types of primary equipment are most commonly used?
12. Are there exercises that do not require any primary equipment?
13. How does the type of equipment correlate with the difficulty level or the target muscle group?
14. What are the different postures used in these exercises?
15. How are the exercises distributed across different body regions?
16. Are there specific postures that are more common for certain body regions or muscle groups?

