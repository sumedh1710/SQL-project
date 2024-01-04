# SQL-project
Sql project-English premier league database

English Premier League Database
This project is an SQL database for managing data related to the English Premier League (EPL), including information about clubs, players, matches, bookings, goals, injuries, managers, referees, stadiums, standings, transfers, trophies, and more.

Table of Contents
Introduction
Database Structure
Tables
Data
Queries
Contributing
License
Introduction
The English Premier League Database is designed to store and manage various aspects of the EPL, such as clubs, players, matches, and more. It provides a structured and relational database schema to facilitate the organization and retrieval of football-related data.

Database Structure
The database has the following key features:

Tables: Structured to represent entities like clubs, players, matches, bookings, goals, injuries, managers, referees, stadiums, standings, transfers, trophies, etc.
Relationships: Utilizes foreign key constraints to establish relationships between different tables.
Data Integrity: Enforces referential integrity to maintain consistency in the database.
Tables
bookings: Records information about player bookings in matches.
clubs: Stores details about football clubs, including club name, founded year, home stadium, manager, and club value.
goals: Contains data on goals scored in matches by players.
injuries: Tracks player injuries, including injury type, injury date, and recovery date.
managers: Stores information about football club managers, including their name, date of birth, nationality, and associated club.
matches: Records details about football matches, including match date, home and away clubs, and goal statistics.
players: Contains player information, including name, date of birth, position, and associated club.
referees: Holds data about football referees, including their name and nationality.
stadiums: Stores information about football stadiums, including stadium name, capacity, location, and associated home club.
standings: Represents the league standings with club points and position.
transfers: Records player transfers between clubs.
trophies: Contains information about trophies won by clubs, including trophy name and year won.
Data
The database includes sample data to demonstrate its functionality. Data is provided for each table, covering bookings, clubs, goals, injuries, managers, matches, players, referees, stadiums, standings, transfers, and trophies.

Queries
The project includes various SQL queries that can be used to retrieve specific information from the database. These queries cover a range of topics, including player statistics, club standings, and more.
