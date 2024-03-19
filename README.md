# Senior Data Engineer Tech Task

## Introduction
This technical challenge is designed to test your expertise in Python and SQL for ETL. 

As a Senior Data Engineer, your task is to design a robust ETL pipeline to extract data from an open source API, carry out specified transformations (alternatively, transformations after loading), and load the data into a local database (open for your choice e.g. sqlite3) for analysis. Specifically, you will work with JSONPlaceholder (https://jsonplaceholder.typicode.com/) to simulate working with data from a simple blogging platform.

**!!! NOTE: You are not required to spend more than 1.5 Hrs on this task. You are not expected to fully complete this task in this timeframe so if you get stuck, simply proceed with another part of this task and note in your README what steps you would have taken to complete the task.**

## Getting Started
1. Read through all the instructions before starting.
2. Clone this repository.
3. Set up a new Python virtual environment and install required dependencies.
4. Follow the instructions outlined in the [Task Details](#task-details) section.
   1. [ETL Challenge](#etl-challenge) - Build an ETL pipeline using Python and SQL.
   2. [Analysis Challenge](#analysis-challenge) - Write SQL queries to answer the posed questions
5. Write unit tests to cover your code.

## Task Details
### ETL Challenge

You may opt to use ELT processes instead of ETL. If you do, use your personal judgement on which steps should follow the 'Load' Step.

1. **Extract**: Retrieve all posts and user data from the `/posts` and `/users` endpoints of JSONPlaceholder API.
2. **Transform**:
   - Parse any embedded JSON structures into a format suitable for your database.
   - Add a computed `status` field to posts: if a post body exceeds 100 characters, set `status` to `lengthy`, and `concise` otherwise.
   - Combine posts with user details based on `userId` to create enriched post records.
3. **Load**:
   - In your database, load the data into table(s) prefixed with your initials, e.g. John Smith will create tables prefixed `js_` 

### Analysis Challenge
Write SQL queries to answer the following questions:
1. Find the top 5 users with the highest number of posts.
2. For each of these top 5 users, calculate the average post length.
3. Identify the day of the week when the most `lengthy` posts are created (assume all posts were created in the UTC timezone).

## Deliverables
- **Python ETL** - A Python ETL pipeline script that is ready to run.
- **Unit Tests** - A collection of unit tests for your ETL pipeline.
- **SQL** - SQL schema creation file and any additional SQL query files.
- **SQL Answers** - Answers to the SQL analysis challenge questions in a Markdown file, including the SQL queries used.
- **Evidence** - Evidence of successful ETL processing, such as unit test outputs, screenshots, and data files.
- **README** - A detailed README.md that includes all required documentation.
- Any additional documentation you think would be helpful for understanding your approach.

## Evaluation Criteria
1. **Code Quality**: Efficient data manipulation with Python and SQL. Clear, well-structured code that follows best practice to a reasonable extent.
2. **SQL Proficiency**: Demonstrate query optimization and complexity in SQL through the analysis challenge.
3. **Error Handling**: Gracefully handle potential errors or irregularities in inputs.
4. **Testing**: Include unit tests to verify each part of the ETL process.
5. **Documentation**: A clear README.md that explains setup, execution, any assumptions made, and any other information you would include in a README.

## How To Submit Your Solution
Fork this repository, commit your changes, and send us a pull request. We will review your submission and get back to you with our feedback.

Good luck!