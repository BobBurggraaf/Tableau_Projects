/*********************************************************
    Name: Age Extract Script
    Date: 01/29/17

*********************************************************/


-- --------------------------
-- AK
-- --------------------------

IF OBJECT_ID('White.Age.Ext_AK','U') IS NOT NULL
DROP TABLE White.Age.Ext_AK;
GO

SELECT * INTO Age.Ext_AK
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_AK.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];

-- --------------------------
-- AL
-- --------------------------

IF OBJECT_ID('White.Age.Ext_AL','U') IS NOT NULL
DROP TABLE White.Age.Ext_AL;
GO

SELECT * INTO Age.Ext_AL
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_AL.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];

-- --------------------------
-- AR
-- --------------------------

IF OBJECT_ID('White.Age.Ext_AR','U') IS NOT NULL
DROP TABLE White.Age.Ext_AR;
GO

SELECT * INTO Age.Ext_AR
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_AR.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];

-- --------------------------
-- AZ
-- --------------------------

IF OBJECT_ID('White.Age.Ext_AZ','U') IS NOT NULL
DROP TABLE White.Age.Ext_AZ;
GO

SELECT * INTO Age.Ext_AZ
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_AZ.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];

-- --------------------------
-- CA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_CA','U') IS NOT NULL
DROP TABLE White.Age.Ext_CA;
GO

SELECT * INTO Age.Ext_CA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_CA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- CO
-- --------------------------

IF OBJECT_ID('White.Age.Ext_CO','U') IS NOT NULL
DROP TABLE White.Age.Ext_CO;
GO

SELECT * INTO Age.Ext_CO
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_CO.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- CT
-- --------------------------

IF OBJECT_ID('White.Age.Ext_CT','U') IS NOT NULL
DROP TABLE White.Age.Ext_CT;
GO

SELECT * INTO Age.Ext_CT
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_CT.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- DC
-- --------------------------

IF OBJECT_ID('White.Age.Ext_DC','U') IS NOT NULL
DROP TABLE White.Age.Ext_DC;
GO

SELECT * INTO Age.Ext_DC
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_DC.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- DE
-- --------------------------

IF OBJECT_ID('White.Age.Ext_DE','U') IS NOT NULL
DROP TABLE White.Age.Ext_DE;
GO

SELECT * INTO Age.Ext_DE
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_DE.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- FL
-- --------------------------

IF OBJECT_ID('White.Age.Ext_FL','U') IS NOT NULL
DROP TABLE White.Age.Ext_FL;
GO

SELECT * INTO Age.Ext_FL
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_FL.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- GA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_GA','U') IS NOT NULL
DROP TABLE White.Age.Ext_GA;
GO

SELECT * INTO Age.Ext_GA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_GA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- HI
-- --------------------------

IF OBJECT_ID('White.Age.Ext_HI','U') IS NOT NULL
DROP TABLE White.Age.Ext_HI;
GO

SELECT * INTO Age.Ext_HI
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_HI.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- IA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_IA','U') IS NOT NULL
DROP TABLE White.Age.Ext_IA;
GO

SELECT * INTO Age.Ext_IA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_IA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- ID
-- --------------------------

IF OBJECT_ID('White.Age.Ext_ID','U') IS NOT NULL
DROP TABLE White.Age.Ext_ID;
GO

SELECT * INTO Age.Ext_ID
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_ID.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- IL
-- --------------------------

IF OBJECT_ID('White.Age.Ext_IL','U') IS NOT NULL
DROP TABLE White.Age.Ext_IL;
GO

SELECT * INTO Age.Ext_IL
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_IL.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- IN
-- --------------------------

IF OBJECT_ID('White.Age.Ext_IN','U') IS NOT NULL
DROP TABLE White.Age.Ext_IN;
GO

SELECT * INTO Age.Ext_IN
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_IN.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- KS
-- --------------------------

IF OBJECT_ID('White.Age.Ext_KS','U') IS NOT NULL
DROP TABLE White.Age.Ext_KS;
GO

SELECT * INTO Age.Ext_KS
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_KS.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- KY
-- --------------------------

IF OBJECT_ID('White.Age.Ext_KY','U') IS NOT NULL
DROP TABLE White.Age.Ext_KY;
GO

SELECT * INTO Age.Ext_KY
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_KY.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- LA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_LA','U') IS NOT NULL
DROP TABLE White.Age.Ext_LA;
GO

SELECT * INTO Age.Ext_LA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_LA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- MA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_MA','U') IS NOT NULL
DROP TABLE White.Age.Ext_MA;
GO

SELECT * INTO Age.Ext_MA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_MA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- MD
-- --------------------------

IF OBJECT_ID('White.Age.Ext_MD','U') IS NOT NULL
DROP TABLE White.Age.Ext_MD;
GO

SELECT * INTO Age.Ext_MD
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_MD.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- ME
-- --------------------------

IF OBJECT_ID('White.Age.Ext_ME','U') IS NOT NULL
DROP TABLE White.Age.Ext_ME;
GO

SELECT * INTO Age.Ext_ME
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_ME.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- MI
-- --------------------------

IF OBJECT_ID('White.Age.Ext_MI','U') IS NOT NULL
DROP TABLE White.Age.Ext_MI;
GO

SELECT * INTO Age.Ext_MI
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_MI.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- MN
-- --------------------------

IF OBJECT_ID('White.Age.Ext_MN','U') IS NOT NULL
DROP TABLE White.Age.Ext_MN;
GO

SELECT * INTO Age.Ext_MN
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_MN.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- MO
-- --------------------------

IF OBJECT_ID('White.Age.Ext_MO','U') IS NOT NULL
DROP TABLE White.Age.Ext_MO;
GO

SELECT * INTO Age.Ext_MO
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_MO.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- MS
-- --------------------------

IF OBJECT_ID('White.Age.Ext_MS','U') IS NOT NULL
DROP TABLE White.Age.Ext_MS;
GO

SELECT * INTO Age.Ext_MS
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_MS.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- MT
-- --------------------------

IF OBJECT_ID('White.Age.Ext_MT','U') IS NOT NULL
DROP TABLE White.Age.Ext_MT;
GO

SELECT * INTO Age.Ext_MT
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_MT.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- NC
-- --------------------------

IF OBJECT_ID('White.Age.Ext_NC','U') IS NOT NULL
DROP TABLE White.Age.Ext_NC;
GO

SELECT * INTO Age.Ext_NC
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_NC.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- ND
-- --------------------------

IF OBJECT_ID('White.Age.Ext_ND','U') IS NOT NULL
DROP TABLE White.Age.Ext_ND;
GO

SELECT * INTO Age.Ext_ND
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_ND.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- NE
-- --------------------------

IF OBJECT_ID('White.Age.Ext_NE','U') IS NOT NULL
DROP TABLE White.Age.Ext_NE;
GO

SELECT * INTO Age.Ext_NE
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_NE.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- NH
-- --------------------------

IF OBJECT_ID('White.Age.Ext_NH','U') IS NOT NULL
DROP TABLE White.Age.Ext_NH;
GO

SELECT * INTO Age.Ext_NH
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_NH.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		

-- --------------------------
-- NJ
-- --------------------------

IF OBJECT_ID('White.Age.Ext_NJ','U') IS NOT NULL
DROP TABLE White.Age.Ext_NJ;
GO

SELECT * INTO Age.Ext_NJ
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_NJ.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];				

-- --------------------------
-- NM
-- --------------------------

IF OBJECT_ID('White.Age.Ext_NM','U') IS NOT NULL
DROP TABLE White.Age.Ext_NM;
GO

SELECT * INTO Age.Ext_NM
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_NM.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];			

-- --------------------------
-- NV
-- --------------------------

IF OBJECT_ID('White.Age.Ext_NV','U') IS NOT NULL
DROP TABLE White.Age.Ext_NV;
GO

SELECT * INTO Age.Ext_NV
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_NV.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		

-- --------------------------
-- NY
-- --------------------------

IF OBJECT_ID('White.Age.Ext_NY','U') IS NOT NULL
DROP TABLE White.Age.Ext_NY;
GO

SELECT * INTO Age.Ext_NY
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_NY.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		

-- --------------------------
-- OH
-- --------------------------

IF OBJECT_ID('White.Age.Ext_OH','U') IS NOT NULL
DROP TABLE White.Age.Ext_OH;
GO

SELECT * INTO Age.Ext_OH
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_OH.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		

-- --------------------------
-- OK
-- --------------------------

IF OBJECT_ID('White.Age.Ext_OK','U') IS NOT NULL
DROP TABLE White.Age.Ext_OK;
GO

SELECT * INTO Age.Ext_OK
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_OK.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	

-- --------------------------
-- OR
-- --------------------------

IF OBJECT_ID('White.Age.Ext_OR','U') IS NOT NULL
DROP TABLE White.Age.Ext_OR;
GO

SELECT * INTO Age.Ext_OR
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_OR.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		
	
-- --------------------------
-- PA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_PA','U') IS NOT NULL
DROP TABLE White.Age.Ext_PA;
GO

SELECT * INTO Age.Ext_PA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_PA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- PR
-- --------------------------

IF OBJECT_ID('White.Age.Ext_PR','U') IS NOT NULL
DROP TABLE White.Age.Ext_PR;
GO

SELECT * INTO Age.Ext_PR
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_PR.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- RI
-- --------------------------

IF OBJECT_ID('White.Age.Ext_RI','U') IS NOT NULL
DROP TABLE White.Age.Ext_RI;
GO

SELECT * INTO Age.Ext_RI
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_RI.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- SC
-- --------------------------

IF OBJECT_ID('White.Age.Ext_SC','U') IS NOT NULL
DROP TABLE White.Age.Ext_SC;
GO

SELECT * INTO Age.Ext_SC
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_SC.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		
	
-- --------------------------
-- SD
-- --------------------------

IF OBJECT_ID('White.Age.Ext_SD','U') IS NOT NULL
DROP TABLE White.Age.Ext_SD;
GO

SELECT * INTO Age.Ext_SD
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_SD.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- TN
-- --------------------------

IF OBJECT_ID('White.Age.Ext_TN','U') IS NOT NULL
DROP TABLE White.Age.Ext_TN;
GO

SELECT * INTO Age.Ext_TN
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_TN.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- TX
-- --------------------------

IF OBJECT_ID('White.Age.Ext_TX','U') IS NOT NULL
DROP TABLE White.Age.Ext_TX;
GO

SELECT * INTO Age.Ext_TX
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_TX.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- UT
-- --------------------------

IF OBJECT_ID('White.Age.Ext_UT','U') IS NOT NULL
DROP TABLE White.Age.Ext_UT;
GO

SELECT * INTO Age.Ext_UT
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_UT.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		
	
-- --------------------------
-- VA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_VA','U') IS NOT NULL
DROP TABLE White.Age.Ext_VA;
GO

SELECT * INTO Age.Ext_VA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_VA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		
	
-- --------------------------
-- VT
-- --------------------------

IF OBJECT_ID('White.Age.Ext_VT','U') IS NOT NULL
DROP TABLE White.Age.Ext_VT;
GO

SELECT * INTO Age.Ext_VT
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_VT.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- WA
-- --------------------------

IF OBJECT_ID('White.Age.Ext_WA','U') IS NOT NULL
DROP TABLE White.Age.Ext_WA;
GO

SELECT * INTO Age.Ext_WA
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_WA.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- WI
-- --------------------------

IF OBJECT_ID('White.Age.Ext_WI','U') IS NOT NULL
DROP TABLE White.Age.Ext_WI;
GO

SELECT * INTO Age.Ext_WI
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_WI.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];		
	
-- --------------------------
-- WV
-- --------------------------

IF OBJECT_ID('White.Age.Ext_WV','U') IS NOT NULL
DROP TABLE White.Age.Ext_WV;
GO

SELECT * INTO Age.Ext_WV
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_WV.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
-- --------------------------
-- WY
-- --------------------------

IF OBJECT_ID('White.Age.Ext_WY','U') IS NOT NULL
DROP TABLE White.Age.Ext_WY;
GO

SELECT * INTO Age.Ext_WY
	FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0',
	'Data Source=C:\Users\fams\Documents\Year_2018\Data\Census\Age\acs_2015_5_e_agesex_WY.xlsx;
	Extended Properties=Excel 12.0')...[Sheet0$];	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	