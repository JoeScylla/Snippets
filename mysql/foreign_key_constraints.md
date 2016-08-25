# Foreign key constraints #

We'll take an example, a company table with a user table containing people from theses company

	CREATE TABLE COMPANY (company_id INT NOT NULL,
		 company_name VARCHAR(50),
		 PRIMARY KEY (company_id)
	) ENGINE=INNODB;;
	CREATE TABLE USER (user_id INT, user_name VARCHAR(50), 
		 company_id INT,
		 INDEX company_id_idx (company_id),
		 FOREIGN KEY (company_id) REFERENCES COMPANY (company_id) ON...
	) ENGINE=INNODB;

Let's look at the ON UPDATE clause:

**ON UPDATE RESTRICT**: the default: if you try to update a company_id in table COMPANY the engine 
will reject the operation if one USER at least links on this company.

**ON UPDATE NO ACTION**: same as RESTRICT.

**ON UPDATE CASCADE**: the best one usually : if you update a company_id in a row of table COMPANY 
the engine will update it accordingly on all USER rows referencing this COMPANY (but no triggers 
activated on USER table, warning). The engine will track the changes for you, it's good.

**ON UPDATE SET NULL**: if you update a company_id in a row of table COMPANY the engine will set 
related USERs company_id to NULL (should be available in USER company_id field). I cannot see any 
interesting thing to do with that on an update, but I may be wrong.

And now on the ON DELETE side:

**ON DELETE RESTRICT**: the default : if you try to delete a company_id Id in table COMPANY the 
engine will reject the operation if one USER at least links on this company, can save your life.

**ON DELETE NO ACTION**: same as RESTRICT

**ON DELETE CASCADE**: dangerous : if you delete a company row in table COMPANY the engine will 
delete as well the related USERs. This is dangerous but can be used to make automatic cleanups on 
secondary tables (so it can be something you want, but quite certainly not for a COMPANY<->USER 
example)

**ON DELETE SET NULL**: handful: if you delete a COMPANY row the related USERs will automatically 
have the relationship to NULL. If Null is your value for users with no company this can be a good 
behavior, for example maybe you need to keep the users in your application, as authors of some 
content, but removing the company is not a problem for you.

usually my default is: ON DELETE RESTRICT ON UPDATE CASCADE. with some ON DELETE CASCADE for track 
tables (logs--not all logs--, things like that) and ON DELETE SET NULL when the master table is a 
'simple attribute' for the table containing the foreign key, like a JOB table for the USER table.