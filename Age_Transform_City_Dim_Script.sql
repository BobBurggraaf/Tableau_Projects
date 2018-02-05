/*********************************************************
    Name: Transform City Dim Script
    Date: 01/30/17

*********************************************************/

BEGIN

	IF OBJECT_ID('White.Age.City_Dim','U') IS NOT NULL
	DROP TABLE White.Age.City_Dim;

	CREATE TABLE Age.City_Dim (
		City_Dim_Key BIGINT IDENTITY(100001,1) PRIMARY KEY
		, City NVARCHAR(255)
		, Summary_Level FLOAT
		, Place_Fips FLOAT
		, Geo_Id NVARCHAR(255)
		, [State] NVARCHAR(255)
		, State_Fips FLOAT
		, Total_Population FLOAT
	)


	DECLARE @Main_Total_Loop_Num INT
			SELECT @Main_Total_Loop_Num = (
				SELECT MAX(State_Abbreviation_Key) AS Max_Field
					FROM Age.State_Abbreviation
			)
		DECLARE @Main_LOOP_NUM INT
		SET @Main_LOOP_NUM = 1
			WHILE  @Main_LOOP_NUM <= @Main_Total_Loop_Num 
			BEGIN	

				DECLARE @StateAbb NVARCHAR(2)
				SELECT @StateAbb = (
					SELECT State_Abbreviation 
						FROM Age.State_Abbreviation
						WHERE 1 = 1
							AND State_Abbreviation_Key = @Main_LOOP_NUM
				)
				
				DECLARE @Ext_State NVARCHAR(50)
				SET @Ext_State = CONCAT('Age.Ext_',@StateAbb)
				
				DECLARE @SQL_1 NVARCHAR(MAX)				
				SET @SQL_1 =
					'INSERT INTO Age.City_Dim (
						City
						, Summary_Level
						, Place_Fips
						, Geo_Id
						, [State]
						, State_Fips
						, Total_Population
					)
					SELECT RTRIM(LTRIM( -- Remove leading and trailing spaces
									REPLACE( -- Remove the state from the name
											REPLACE( -- Remove the space
												REPLACE( -- Remove CDP
													REPLACE( -- Remove town
														REPLACE(Area_Name -- Remove city
														,''city,'','',''
														)
													,''town,'','',''
													)
												,''CDP,'','',''
												)
											,'' ,'','','') -- This ends the string that will be used in the removal of the state
											, REVERSE(SUBSTRING(REVERSE( -- This will find the state string at the end of the string
																		REPLACE(	
																			REPLACE( 
																				REPLACE(
																					REPLACE(Area_Name
																					,''city,'','',''
																					)
																				,''town,'','',''
																				)
																			,''CDP,'','',''
																			)
																		,'' ,'','','')
																	),1,
																CHARINDEX('','',REVERSE(
																						REPLACE(	
																							REPLACE( 
																								REPLACE(
																									REPLACE(Area_Name
																									,''city,'','',''
																									)
																								,''town,'','',''
																								)
																							,''CDP,'','',''
																							)
																						,'' ,'','','')
																					) ) -0 )) -- This is the end of finding the state string and comma that need to be removed
											,'''') -- the state will be replaced with nothing
							) ) AS City
						, Summary_Level
						, Place_Fips
						, Geo_Id
						, [State]
						, State_Fips
						, Total_Population
						FROM '

					DECLARE @SQL_2 NVARCHAR(MAX)				
					SET @SQL_2 = '
						 WHERE 1 = 1
							AND Summary_Level = 160'
				
				
					EXEC(@SQL_1 + @Ext_State + @SQL_2)
					
				SET @Main_LOOP_NUM = @Main_LOOP_NUM + 1	
					
			END		
					
END