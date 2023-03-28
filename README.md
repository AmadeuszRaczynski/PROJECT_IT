# DATABASE WITH BUSINESS LOGIC TO OPERATE THE RECRUITMENT PORTAL -> FROM A TO Z <-



## PROGRESS STEPS 
1. CONCEPTUAL MODEL (UML MODELS AND MY OWN NOTES)
2. LOGIC MODEL (SQL DATA MODELER)
3. PHYSICAL MODEL (SQL DEVELOPER)
4. BUSSINES LOGIC AND SUPPORT MECHANISMS (SQL DEVELOPER using PL/SQL)



## Table of Contents 
1. About
2. Tools
3. Prerequisites
4. Project development


#### About

In my repository I would like to present the progress of my development in the field of databases. This project 


#### Tools 

* `PL/SQL`
* `SQL`
* `Data Modeler 21.2.0.183`
* `SQL Developer Version 22.2.1.234`
* `Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production`

#### Prerequisites

1. Installing SQL Developer on Windows
2. Installing Oracle Database 21c on Windows 10/11 
3. Download Source Files
5. Create New User using "PL_SQL_Practice" schema


## Installing SQL Developer on Windows

 Here is good tutorial for install SQL DEVELOPER on Windows 10 x64 bit [here](https://www.youtube.com/watch?v=zliF8kXVmeE) but if You would have a problem [here](https://docs.oracle.com/en/database/oracle/sql-developer/22.2/rptug/sql-developer-concepts-usage.html#GUID-156BEBA3-2F9B-4CE0-8E91-728581FF46AB) is documentation on this subject. 

## Installing Oracle Database 21c on Windows 10/11 

After installing SQL Developer, you need to install the Oracle database. In our case, it will be the latest version of Oracle Database 21C. Here is a good tutorial to do it.  [here](https://www.youtube.com/watch?v=-h2NJmake20). 

## Download Source Files

To create new User: PROJECT_IT_SCHEMA - you need to download it from attached file : PROJECT_IT_SCHEMA

## Create New User using "PROJECT_IT_SCHEMA" schema

Next step is to open SQL Developer and do the following steps:
1. To create new user use the code below in Schema - system: 

![1](https://user-images.githubusercontent.com/125867556/228336880-659cd466-d348-45f3-9168-e1fb033c1e31.PNG)


2. Next step is  adding New Connection and fill the necessary information:
UserName: PROJECT_IT_SCHEMA
Password: password123
*Important to be connected to container: XEPDB1

![2](https://user-images.githubusercontent.com/125867556/228336923-e618f6c6-9715-4a4d-876b-0e77d5a106ec.PNG)


3. Last step is to copy attached sript: "PROJECT_IT_SCHEMA", paste it in Worksheet of your created user and Run this sript. 

![3](https://user-images.githubusercontent.com/125867556/228336972-61cf992e-62ae-499b-868d-8146426f6151.PNG)

4. After it you will have ready environment to get my attached scripts and test it.

![4](https://user-images.githubusercontent.com/125867556/228337035-da0dee9c-6898-426f-8dda-031e52e2d0b4.PNG)

#### Project development


1. First step is to develop a conceptual model of business processes on which the operation of our portal is to be based. Here is one of the UML diagram witch is used to understand process in our DB.

![ex1_UML](https://user-images.githubusercontent.com/125867556/228339183-944af8c3-47f7-40f5-b2d8-487fae0c7ebe.png)

2. Next step was to create Logic model of our DB, it was using with SQL Data Modeler, here is logic model of our relational DB model.

![Relational_1](https://user-images.githubusercontent.com/125867556/228339217-94d5c501-e787-4ac6-81d2-e9f70e532f8d.png)

3. Next step was inserting data in our DB. I used for it data from different sources like built-in user schemas as well as I generated some of the data myself for the purpose of creating a database and creating business logic based on this data.

4. Currently I am working on implementing logic bussines for working our IT_project - Recruitment Service, here is simple example of some PL/SQL script.

```sql

--Mechanism of automatic approval of the customer's order after payment.

DROP TRIGGER ai_order_payments_trg;
	CREATE OR REPLACE TRIGGER ai_order_payments_trg
	AFTER INSERT ON order_payments
	FOR EACH ROW
	WHEN (NEW.status = 'APPROVED')
	BEGIN
		 UPDATE subscriptions
			SET status = 'APPROVED'
		  WHERE subscription_Id = :NEW.subscription_id;
	END ai_order_payments_trg;
	/


```


## Contact
This project is in the process of developing and adding more business logic functionalities using PL/SQL.
If You have any problem please contact me. Any advices or guidance are welcome.

Amadeusz RACZYŃKI

LinkedIn: www.linkedin.com/in/amadeusz-raczyński-6a336b222





