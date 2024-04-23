# Waste Management System

## Overview

The Waste Management System is a rest api designed to facilitate the management and recycling of various types of waste. It provides functionalities to manage disposal guidelines and recycling tips for different waste categories, enabling users to contribute to environmental sustainability.

## Features

- **CRUD Operations**: Perform Create, Read, Update, and Delete operations for disposal guidelines and recycling tips.
- **RESTful API**: Expose RESTful endpoints to interact with disposal guidelines and recycling tips data.
- **Data Model**: Utilize entity models and repositories to organize and access waste management data.
- **Integration with Waste Categories**: Utilize waste category codes to categorize disposal guidelines and recycling tips effectively.
- **Database Population**: Populate the database with initial data using SQL inserts. 
- **Error Handling**: Utilizes a centralized error handling mechanism through the ApiExceptionHandler class to provide consistent error responses to clients.

## Technologies Used

- **Programming Language**: Java
- **Framework**: Spring Boot
- **Database**: H2 in-memory database
- **ORM**: Hibernate
- **REST API**: Spring MVC
- **Build Tool**: Maven

## Setup Instructions

1. **Clone the Repository**: `git clone <https://github.com/Dilapisho/graduate-java-developer-REF-GJD001.git>`
2. **Database Configuration**: Configure the PostgreSQL database settings in `application.properties`.
3. **Build the Application**: Run `mvn clean install` to build the application.
4. **Run the Application**: Execute `java -jar target/app-0.0.1-SHNAPSHOT.jar` to start the application.
5. **Access the API**: Use tools like Postman or curl to interact with the RESTful API endpoints.

## API Endpoints

### Waste Category

- **GET /waste-category**: Retrieve all waste categories.
- **GET /waste-category/{id}**: Retrieve a specific waste category by ID.
- **POST /waste-category**: Create a new waste category.
- **PUT /waste-category**: Update an existing waste category.
- **DELETE /waste-category**: Delete a waste category.

### Disposal Guidelines

- **GET /disposal-guidelines**: Retrieve all disposal guidelines.
- **GET /disposal-guidelines/{id}**: Retrieve a specific disposal guideline by ID.
- **POST /disposal-guidelines**: Create a new disposal guideline.
- **PUT /disposal-guidelines/**: Update an existing disposal guideline.
- **DELETE /disposal-guidelines/{id}**: Delete a disposal guideline.

### Recycling Tips

- **GET /recycling-tips**: Retrieve all recycling tips.
- **GET /recycling-tips/{id}**: Retrieve a specific recycling tip by ID.
- **POST /recycling-tips**: Create a new recycling tip.
- **PUT /recycling-tips/**: Update an existing recycling tip.
- **DELETE /recycling-tips/{id}**: Delete a recycling tip.

## Error Handling
The Waste Management System utilizes a centralized error handling mechanism through the ApiExceptionHandler class. This class intercepts and handles exceptions that occur during API requests, providing consistent error responses to clients.

### ApiExceptionHandler
The ApiExceptionHandler class is responsible for:

- **Interpreting various types of exceptions thrown during API requests.**
- **Generating appropriate error responses with standardized formats.**
- **Logging error details for troubleshooting and analysis.**
