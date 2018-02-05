/*********************************************************
    Name: Personal_Income_Per_Capita_Transform 
    Date: 02/03/17

*********************************************************/

IF OBJECT_ID('White.Pipc.Personal_Income_Per_Capita_2007_To_2016','U') IS NOT NULL
	DROP TABLE White.Pipc.Personal_Income_Per_Capita_2007_To_2016;

	CREATE TABLE Pipc.Personal_Income_Per_Capita_2007_To_2016 (
		Personal_Income_Per_Capita_2007_To_2016_Key INT IDENTITY(10001,1) PRIMARY KEY
		, [State] NVARCHAR(255)
		, [Year] FLOAT
		, Personal_Income_Per_Capita FLOAT
		, Pipc_Perc_Of_Change_From_National_Avg DECIMAL(10,2)
	)
	
	INSERT INTO Pipc.Personal_Income_Per_Capita_2007_To_2016 (
		[State]
		, [Year]
		, Personal_Income_Per_Capita
		, Pipc_Perc_Of_Change_From_National_Avg
	)
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2007
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2007
				WHERE 1 = 1
					AND GeoFips = 0
			) B
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2008
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2008
				WHERE 1 = 1
					AND GeoFips = 0
			) B
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2009
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2009
				WHERE 1 = 1
					AND GeoFips = 0
			) B		
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2010
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2010
				WHERE 1 = 1
					AND GeoFips = 0
			) B	
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2011
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2011
				WHERE 1 = 1
					AND GeoFips = 0
			) B	
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2012
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2012
				WHERE 1 = 1
					AND GeoFips = 0
			) B
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2013
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2013
				WHERE 1 = 1
					AND GeoFips = 0
			) B
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2014
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2014
				WHERE 1 = 1
					AND GeoFips = 0
			) B
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2015
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2015
				WHERE 1 = 1
					AND GeoFips = 0
			) B
	UNION
	SELECT A.State_Region AS [State]
		, A.[Year]
		, A.Personal_Income_Per_Capita
		, ROUND((A.Personal_Income_Per_Capita - B.Personal_Income_Per_Capita_National_Avg)/B.Personal_Income_Per_Capita_National_Avg,2) AS Pipc_Perc_Of_Change_From_National_Avg
		FROM
			(SELECT Personal_Income_Per_Capita
				, [Year]
				, REPLACE(State_Region,'*','') AS State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2016
				WHERE 1 = 1
					AND GeoFips NOT IN (0,91000,92000,93000,94000,95000,96000,97000,98000)
			) A ,
			(SELECT Personal_Income_Per_Capita AS Personal_Income_Per_Capita_National_Avg
				, [Year]
				, State_Region
				, GeoFips
				FROM Pipc.Ext_Pipc_2016
				WHERE 1 = 1
					AND GeoFips = 0
			) B
			
			
			
		
		
		
		
		
		
		
		