BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0011D00000hRtdSQAS','Deli Supermarket','',NULL);
INSERT INTO "Account" VALUES('0011D00000hRtdmQAC','SunFresh Superstore','',NULL);
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a001D000003I69FQAS','Chips','2020-08-01','Non-refrigerated','a011D0000055tXHQAY',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a001D000003I69KQAS','Soap','2020-06-01','Non-refrigerated','a011D0000055tXHQAY',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a001D000003I69UQAS','Corn Bread','2020-07-11','Frozen','a011D0000055tXIQAY',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a001D000003I69PQAS','White Bread','2020-07-04','Non-refrigerated','a011D0000055tXIQAY',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a001D000003I69eQAC','Milk','2020-07-11','Refrigerated','a011D0000055tXRQAY',NULL);
INSERT INTO "Delivery_Item__c" VALUES('a001D000003I69ZQAS','Hamburger Patties','2020-07-11','Frozen','a011D0000055tXMQAY',NULL);
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Schedule_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	record_type VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a011D0000055tXMQAY','2020-07-08T19:00:00.000Z','Scheduled','0011D00000hRtdmQAC',NULL);
INSERT INTO "Delivery__c" VALUES('a011D0000055tXHQAY','2020-07-01T19:00:00.000Z','Scheduled','0011D00000hRtdmQAC',NULL);
INSERT INTO "Delivery__c" VALUES('a011D0000055tXIQAY','2020-07-06T19:00:00.000Z','Scheduled','0011D00000hRtdSQAS',NULL);
INSERT INTO "Delivery__c" VALUES('a011D0000055tXRQAY','2020-06-29T19:00:00.000Z','Requested','0011D00000hRtdSQAS',NULL);
COMMIT;
