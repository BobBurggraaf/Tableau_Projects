/*********************************************************
    Name: State Abbreviation Table
    Date: 01/30/17

*********************************************************/


IF OBJECT_ID('White.Age.State_Abbreviation','U') IS NOT NULL
DROP TABLE White.Age.State_Abbreviation;
GO

CREATE TABLE Age.State_Abbreviation (
	State_Abbreviation_Key INT IDENTITY(1,1) PRIMARY KEY
	, State_Abbreviation NVARCHAR(2)
)

INSERT INTO Age.State_Abbreviation (
	State_Abbreviation
)
VALUES('AK')
	,('AL')
	,('AR')
	,('AZ')
	,('CA')
	,('CO')
	,('CT')
	,('DC')
	,('DE')
	,('FL')
	,('GA')
	,('HI')
	,('IA')
	,('ID')
	,('IL')
	,('IN')
	,('KS')
	,('KY')
	,('LA')
	,('MA')
	,('MD')
	,('ME')
	,('MI')
	,('MN')
	,('MO')
	,('MS')
	,('MT')
	,('NC')
	,('ND')
	,('NE')
	,('NH')
	,('NJ')
	,('NM')
	,('NV')
	,('NY')
	,('OH')
	,('OK')
	,('OR')
	,('PA')
	,('PR')
	,('RI')
	,('SC')
	,('SD')
	,('TN')
	,('TX')
	,('UT')
	,('VA')
	,('VT')
	,('WA')
	,('WI')
	,('WV')
	,('WY')
