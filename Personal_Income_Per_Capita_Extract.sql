/*********************************************************
    Name: Personal_Income_Per_Capita_Extract 
    Date: 02/02/17

*********************************************************/


-- --------------------------
-- 2007
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2007','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2007;
GO

SELECT * INTO Pipc.Ext_Pipc_2007
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2007.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2008
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2008','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2008;
GO

SELECT * INTO Pipc.Ext_Pipc_2008
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2008.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2009
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2009','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2009;
GO

SELECT * INTO Pipc.Ext_Pipc_2009
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2009.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2010
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2010','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2010;
GO

SELECT * INTO Pipc.Ext_Pipc_2010
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2010.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2011
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2011','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2011;
GO

SELECT * INTO Pipc.Ext_Pipc_2011
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2011.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2012
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2012','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2012;
GO

SELECT * INTO Pipc.Ext_Pipc_2012
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2012.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2013
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2013','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2013;
GO

SELECT * INTO Pipc.Ext_Pipc_2013
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2013.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2014
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2014','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2014;
GO

SELECT * INTO Pipc.Ext_Pipc_2014
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2014.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2015
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2015','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2015;
GO

SELECT * INTO Pipc.Ext_Pipc_2015
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2015.xlsx;
	Extended Properties=Excel 12.0')...[Data$];

-- --------------------------
-- 2016
-- --------------------------

IF OBJECT_ID('White.Pipc.Ext_Pipc_2016','U') IS NOT NULL
DROP TABLE White.Pipc.Ext_Pipc_2016;
GO

SELECT * INTO Pipc.Ext_Pipc_2016
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\BEA\Personal_Income_Per_Capita\Personal_Income_Per_Capita_2016.xlsx;
	Extended Properties=Excel 12.0')...[Data$];
	
	
	
	
	
	
	