Database Fundamentals
=========================
Lecturer: Dr. Hima Vadapalli
  * Deep learning finacail forcasting.

Introduction
---------------
Data must be stored effectivly. Space and time efficiency.

Goals
* Know fundental design concepts
* Evolution of database systems, relational databases
* Construction and interpret blueprint
* Comperhend and apply business rules in deeloping database design (Translate instatutions rule into algorithms)
* Construct query statements (MySQL)

Times 
* Lecture tuesday
* Tutorials: Alternitive Thursdays
* Labs Alternate Fridays
* **Sakia not moodle**

Assessments
* Class mark 40%
  + Class Test 20%
  + Assignment 20%

* Exam mark 60%
  + Lab exam - 20%
  + Written exam 40%

Textbook:
  * Database systems Steven Morris. in library.

Database systems
--------------------
Objectives

  * The difference between data and information
  * What is the difference and various types of databases
  * Understand the problems with file systems. 
  * What are the main

# Data vs information

* A raw fact has no context.
* Information has a context.

Raw facts must be prossed according to information to derive knowledge.

Database:
  A shared^[Shared amount multiplle users, simultainious reed write acces possible] intergrated^[Different view points but of the same fundamental data arranged in the same way], computerized structure.

Matadata:

  is data about data (type), and relation ship between data. 

Database management system:
  
  Collection of programs which allows the creation and managment of databases.
  * Allows retirval from a the database.
  * Allows wrinting to the database.
  * Minor restructuring of the database. (Not sure how much actually quite a bit.)

End users only interact with the database managment system not the database. So that they can't damage the database.

It is costly to move from database sytem to another database system.

Benefits of database

  * Improove data sharing
  * Improove data security
  * Better data information
  * Minamize data inconsistency
  * Imporove data access
  * Imporove discion making
  * Increase end-user productivity

Types of database
------------------------
  * Number of users
    + Single user
    + Multiple users
      -Workplace (small)
      -Enterprise (big)
  * Database locations
    + Centralized
    + Distrabuted
  * Type of data stored
    + General purpose
    + Discipline-specific
    + Operational database
    + Transactional or production database
    + Data warehouse: Stores scientific or rarly used data.
  * Expected type and extent of use
  * Degree of structure

Missalanios
------------------------
Data is procesed to produce information

Non realtion databases are not tables and are not well structured noSQL or not only SQL. infromation stored as documents or unique key values. 

We often use a language like python or java ontop of SQL

Redundant data
: Two or more copies of the same record, try to minamize
  **Rudancy couses inconsistency**

Field
: A single unit of data

record
: Logically consistent data

Structural and data dependency
 
Structural Dependency
: Access to the file is strongly dependent on its own structures.

Structural independence:
  change file structure changes access proram

Data dependce
: Depence on the data storage charicteristics do not affect data access.
  
  SQL is data independence

Data redundacy: Same data is stored unnecesarily in different places unnessasarily. double entry fr linking up containers or tables is not redundancy.
  
  * Data anomalies: intoduced becouse of recent updates to redundant data
    + update anomalies
    + Insertaion anomialies
    + Deletion anomilies
     -


# Data modeling and realtionships

Linked data items such s students and courses have IDs in two seperate tables but this is not redundancy becouse it is useful and aviods lots of null entries.

One to one data item are normally stored int the same table.

IDs serve as links between tables

Would it be beneficial to have a seperate manager table as well as an employ table.

Some tables can be bridge entities.

How to make more of an unset amount of an attribute such as skill. Give every employ thier own table.

## Rules
* A noun is a an entity
* A verb is an relationship
* Relationships are bideiectional
* Two questions to identify the relationship type
  + How many instances of B are realted to one instance of A
  + How many instances of A are realted to one instance of B.
  + A monodirectional realtionship gets no marks!
      
# The evolution of Data models

## Fill System

* Hieracharacal structure

## Network model

* All relationships are one to many
* Many to many relationships are dificult

## Relational databases

* intially storage was expensive
* now it is much cheaper so almost always implemented
* implemented through relational database managment systems

## Enitity Relationship Model

* Visualization tool for databases 

* Find diagram of crows foot notation

## Object representation

# SQL

* Data definition statments
  - CREAT
  - ALTER
  - DROP
  - RENAME
  - TRUNCATE
      * remove all data that is part of a structure
* Data manipulation Languegea
