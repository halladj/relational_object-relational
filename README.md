# Football Championship Management System

## Overview

This project implements a system for managing football championships using relational and object-relational databases. It supports teams, players, referees, matches, and events within a championship, providing an efficient way to store and manage complex relationships and match details.

## Project Structure

- **Part 1: UML Class Diagram**
  - A detailed UML class diagram represents the relationships between cities, teams, players, referees, and matches. 
  - Key features include the association of teams with cities and referees with matches.

- **Part 2: Relational Model**
  - This part focuses on converting the UML diagram into a relational database model using SQL. 
  - Includes creation of tables, triggers for auto-incrementing IDs, and procedures for populating data.

- **Part 3: Object-Relational Model**
  - This part extends the relational model into the object-relational paradigm.
  - Tables are created using predefined types, making it easier to manage relationships and complex data structures.

## How to Run

1. **Database Setup**
   - Create the required database in your RDBMS of choice (e.g., PostgreSQL, Oracle).
   - Run the provided SQL scripts to set up the database schema.
   - Scripts include table creation, triggers, procedures, and sample data population.

2. **Populate Data**
   - Use the provided procedures to insert data into the tables.
   - Example procedures are included to populate tables like `City`, `Team`, `Player`, `Match`, etc.

3. **Trigger and Functionality**
   - Triggers are set up to manage automatic ID generation for entities like `City`, `Team`, `Championship`, etc.
   - Functions and procedures are provided to handle key football events like goals, sanctions, and substitutions.

4. **Querying the Data**
   - After populating the database, you can query tables to retrieve information about teams, players, matches, and the overall championship standings.
   
## Files Included

- **UML Diagram**: The class diagram showing all entities and their relationships.
- **Relational Model Scripts**: SQL scripts for creating tables, triggers, and procedures.
- **Object-Relational Model Scripts**: SQL scripts using object-relational features for more complex database structures.

## Key Features

- Manage multiple football championships.
- Record key match events (goals, sanctions, substitutions).
- Support for multiple referees in a match.
- Automatic ID generation using SQL triggers.
- Relational and object-relational model implementation.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
