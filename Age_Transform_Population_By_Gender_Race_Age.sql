/*********************************************************
    Name: Transform Population by Gender, Race, Age Script
    Date: 01/31/17

*********************************************************/

BEGIN

	IF OBJECT_ID('White.Age.Population_By_Gender_Race_Age','U') IS NOT NULL
	DROP TABLE White.Age.Population_By_Gender_Race_Age;

	CREATE TABLE Age.Population_By_Gender_Race_Age (
		Population_By_Gender_Race_Age_Key BIGINT IDENTITY(1000001,1) PRIMARY KEY
		, City NVARCHAR(255)
		, Place_Fips FLOAT
		, Geo_Id NVARCHAR(255)
		, [State] NVARCHAR(255)
		, State_Fips FLOAT
		, Gender NVARCHAR(50)
		, Race NVARCHAR(100)
		, Age_Group NVARCHAR(50)
		, Population_Count FLOAT
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
					'INSERT INTO Age.Population_By_Gender_Race_Age (
						City
						, Place_Fips
						, Geo_Id
						, [State]
						, State_Fips
						, Gender
						, Race
						, Age_Group
						, Population_Count
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
						, Place_Fips
						, Geo_Id
						, [State]
						, State_Fips
						, CASE WHEN CHARINDEX(''_Female'',Race_Gender_Age) > 0 THEN ''Female''
								WHEN CHARINDEX(''_Male'',Race_Gender_Age) > 0 THEN ''Male'' 
								ELSE NULL END AS Gender
						, CASE WHEN CHARINDEX(''White'',Race_Gender_Age) > 0 THEN ''White'' 
								WHEN CHARINDEX(''Black'',Race_Gender_Age) > 0 THEN ''Black or African American''
								WHEN CHARINDEX(''Indian'',Race_Gender_Age) > 0 THEN ''American Indian and Alaska Native''
								WHEN CHARINDEX(''Asian'',Race_Gender_Age) > 0 THEN ''Asian''
								WHEN CHARINDEX(''Hawaiian'',Race_Gender_Age) > 0 THEN ''Native Hawaiian and Other Pacific Islander''
								WHEN CHARINDEX(''Some_Other'',Race_Gender_Age) > 0 THEN ''Some Other''
								WHEN CHARINDEX(''Two_Or_More'',Race_Gender_Age) > 0 THEN ''Two or More''
								ELSE NULL END AS Race
						, CASE WHEN CHARINDEX(''Under_5'',Race_Gender_Age) > 0 THEN ''Under_5''
								WHEN CHARINDEX(''5_To_9'',Race_Gender_Age) > 0 THEN ''5_To_9''
								WHEN CHARINDEX(''10_To_14'',Race_Gender_Age) > 0 THEN ''10_To_14''
								WHEN CHARINDEX(''15_To_17'',Race_Gender_Age) > 0 THEN ''15_To_17''
								WHEN CHARINDEX(''18_To_19'',Race_Gender_Age) > 0 THEN ''18_To_19''
								WHEN CHARINDEX(''20_To_24'',Race_Gender_Age) > 0 THEN ''20_To_24''
								WHEN CHARINDEX(''25_To_29'',Race_Gender_Age) > 0 THEN ''25_To_29''
								WHEN CHARINDEX(''30_To_34'',Race_Gender_Age) > 0 THEN ''30_To_34''
								WHEN CHARINDEX(''35_To_44'',Race_Gender_Age) > 0 THEN ''35_To_44''
								WHEN CHARINDEX(''45_To_54'',Race_Gender_Age) > 0 THEN ''45_To_54''
								WHEN CHARINDEX(''55_To_64'',Race_Gender_Age) > 0 THEN ''55_To_64''
								WHEN CHARINDEX(''65_To_74'',Race_Gender_Age) > 0 THEN ''65_To_74''
								WHEN CHARINDEX(''75_To_84'',Race_Gender_Age) > 0 THEN ''75_To_84''
								WHEN CHARINDEX(''85_And_Over'',Race_Gender_Age) > 0 THEN ''85_And_Over''
								ELSE NULL END AS Age_Group
						, Count_By_Race_Gender_Age AS Population_Count
						FROM
							(SELECT Area_Name
								, Place_Fips
								, Geo_Id
								, [State]
								, State_Fips
								, Race_Gender_Age
								, Count_By_Race_Gender_Age
								FROM
									(SELECT Area_Name
										, Place_Fips
										, Geo_Id
										, [State]
										, State_Fips
										, White_Male_Under_5
										, White_Male_5_To_9
										, White_Male_10_To_14
										, White_Male_15_To_17
										, White_Male_18_To_19
										, White_Male_20_To_24
										, White_Male_25_To_29
										, White_Male_30_To_34
										, White_Male_35_To_44
										, White_Male_45_To_54
										, White_Male_55_To_64
										, White_Male_65_To_74
										, White_Male_75_To_84
										, White_Male_85_And_Over
										, White_Female_Under_5
										, White_Female_5_To_9
										, White_Female_10_To_14
										, White_Female_15_To_17
										, White_Female_18_To_19
										, White_Female_20_To_24
										, White_Female_25_To_29
										, White_Female_30_To_34
										, White_Female_35_To_44
										, White_Female_45_To_54
										, White_Female_55_To_64
										, White_Female_65_To_74
										, White_Female_75_To_84
										, White_Female_85_And_Over
										, Black_Or_African_American_Male_Under_5
										, Black_Or_African_American_Male_5_To_9
										, Black_Or_African_American_Male_10_To_14
										, Black_Or_African_American_Male_15_To_17
										, Black_Or_African_American_Male_18_To_19
										, Black_Or_African_American_Male_20_To_24
										, Black_Or_African_American_Male_25_To_29
										, Black_Or_African_American_Male_30_To_34
										, Black_Or_African_American_Male_35_To_44
										, Black_Or_African_American_Male_45_To_54
										, Black_Or_African_American_Male_55_To_64
										, Black_Or_African_American_Male_65_To_74
										, Black_Or_African_American_Male_75_To_84
										, Black_Or_African_American_Male_85_And_Over
										, Black_Or_African_American_Female_Under_5
										, Black_Or_African_American_Female_5_To_9
										, Black_Or_African_American_Female_10_To_14
										, Black_Or_African_American_Female_15_To_17
										, Black_Or_African_American_Female_18_To_19
										, Black_Or_African_American_Female_20_To_24
										, Black_Or_African_American_Female_25_To_29
										, Black_Or_African_American_Female_30_To_34
										, Black_Or_African_American_Female_35_To_44
										, Black_Or_African_American_Female_45_To_54
										, Black_Or_African_American_Female_55_To_64
										, Black_Or_African_American_Female_65_To_74
										, Black_Or_African_American_Female_75_To_84
										, Black_Or_African_American_Female_85_And_Over
										, American_Indian_And_Alaska_Native_Male_Under_5
										, American_Indian_And_Alaska_Native_Male_5_To_9
										, American_Indian_And_Alaska_Native_Male_10_To_14
										, American_Indian_And_Alaska_Native_Male_15_To_17
										, American_Indian_And_Alaska_Native_Male_18_To_19
										, American_Indian_And_Alaska_Native_Male_20_To_24
										, American_Indian_And_Alaska_Native_Male_25_To_29
										, American_Indian_And_Alaska_Native_Male_30_To_34
										, American_Indian_And_Alaska_Native_Male_35_To_44
										, American_Indian_And_Alaska_Native_Male_45_To_54
										, American_Indian_And_Alaska_Native_Male_55_To_64
										, American_Indian_And_Alaska_Native_Male_65_To_74
										, American_Indian_And_Alaska_Native_Male_75_To_84
										, American_Indian_And_Alaska_Native_Male_85_And_Over
										, American_Indian_And_Alaska_Native_Female_Under_5
										, American_Indian_And_Alaska_Native_Female_5_To_9
										, American_Indian_And_Alaska_Native_Female_10_To_14
										, American_Indian_And_Alaska_Native_Female_15_To_17
										, American_Indian_And_Alaska_Native_Female_18_To_19
										, American_Indian_And_Alaska_Native_Female_20_To_24
										, American_Indian_And_Alaska_Native_Female_25_To_29
										, American_Indian_And_Alaska_Native_Female_30_To_34
										, American_Indian_And_Alaska_Native_Female_35_To_44
										, American_Indian_And_Alaska_Native_Female_45_To_54
										, American_Indian_And_Alaska_Native_Female_55_To_64
										, American_Indian_And_Alaska_Native_Female_65_To_74
										, American_Indian_And_Alaska_Native_Female_75_To_84
										, American_Indian_And_Alaska_Native_Female_85_And_Over
										, Asian_Male_Under_5
										, Asian_Male_5_To_9
										, Asian_Male_10_To_14
										, Asian_Male_15_To_17
										, Asian_Male_18_To_19
										, Asian_Male_20_To_24
										, Asian_Male_25_To_29
										, Asian_Male_30_To_34
										, Asian_Male_35_To_44
										, Asian_Male_45_To_54
										, Asian_Male_55_To_64
										, Asian_Male_65_To_74
										, Asian_Male_75_To_84
										, Asian_Male_85_And_Over
										, Asian_Female_Under_5
										, Asian_Female_5_To_9
										, Asian_Female_10_To_14
										, Asian_Female_15_To_17
										, Asian_Female_18_To_19
										, Asian_Female_20_To_24
										, Asian_Female_25_To_29
										, Asian_Female_30_To_34
										, Asian_Female_35_To_44
										, Asian_Female_45_To_54
										, Asian_Female_55_To_64
										, Asian_Female_65_To_74
										, Asian_Female_75_To_84
										, Asian_Female_85_And_Over
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_Under_5
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_5_To_9
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_10_To_14
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_15_To_17
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_18_To_19
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_20_To_24
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_25_To_29
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_30_To_34
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_35_To_44
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_45_To_54
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_55_To_64
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_65_To_74
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_75_To_84
										, Native_Hawaiian_And_Other_Pacific_Islander_Male_85_And_Over
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_Under_5
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_5_To_9
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_10_To_14
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_15_To_17
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_18_To_19
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_20_To_24
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_25_To_29
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_30_To_34
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_35_To_44
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_45_To_54
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_55_To_64
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_65_To_74
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_75_To_84
										, Native_Hawaiian_And_Other_Pacific_Islander_Female_85_And_Over
										, Some_Other_Race_Male_Under_5
										, Some_Other_Race_Male_5_To_9
										, Some_Other_Race_Male_10_To_14
										, Some_Other_Race_Male_15_To_17
										, Some_Other_Race_Male_18_To_19
										, Some_Other_Race_Male_20_To_24
										, Some_Other_Race_Male_25_To_29
										, Some_Other_Race_Male_30_To_34
										, Some_Other_Race_Male_35_To_44
										, Some_Other_Race_Male_45_To_54
										, Some_Other_Race_Male_55_To_64
										, Some_Other_Race_Male_65_To_74
										, Some_Other_Race_Male_75_To_84
										, Some_Other_Race_Male_85_And_Over
										, Some_Other_Race_Female_Under_5
										, Some_Other_Race_Female_5_To_9
										, Some_Other_Race_Female_10_To_14
										, Some_Other_Race_Female_15_To_17
										, Some_Other_Race_Female_18_To_19
										, Some_Other_Race_Female_20_To_24
										, Some_Other_Race_Female_25_To_29
										, Some_Other_Race_Female_30_To_34
										, Some_Other_Race_Female_35_To_44
										, Some_Other_Race_Female_45_To_54
										, Some_Other_Race_Female_55_To_64
										, Some_Other_Race_Female_65_To_74
										, Some_Other_Race_Female_75_To_84
										, Some_Other_Race_Female_85_And_Over
										, Two_Or_More_Races_Male_Under_5
										, Two_Or_More_Races_Male_5_To_9
										, Two_Or_More_Races_Male_10_To_14
										, Two_Or_More_Races_Male_15_To_17
										, Two_Or_More_Races_Male_18_To_19
										, Two_Or_More_Races_Male_20_To_24
										, Two_Or_More_Races_Male_25_To_29
										, Two_Or_More_Races_Male_30_To_34
										, Two_Or_More_Races_Male_35_To_44
										, Two_Or_More_Races_Male_45_To_54
										, Two_Or_More_Races_Male_55_To_64
										, Two_Or_More_Races_Male_65_To_74
										, Two_Or_More_Races_Male_75_To_84
										, Two_Or_More_Races_Male_85_And_Over
										, Two_Or_More_Races_Female_Under_5
										, Two_Or_More_Races_Female_5_To_9
										, Two_Or_More_Races_Female_10_To_14
										, Two_Or_More_Races_Female_15_To_17
										, Two_Or_More_Races_Female_18_To_19
										, Two_Or_More_Races_Female_20_To_24
										, Two_Or_More_Races_Female_25_To_29
										, Two_Or_More_Races_Female_30_To_34
										, Two_Or_More_Races_Female_35_To_44
										, Two_Or_More_Races_Female_45_To_54
										, Two_Or_More_Races_Female_55_To_64
										, Two_Or_More_Races_Female_65_To_74
										, Two_Or_More_Races_Female_75_To_84
										, Two_Or_More_Races_Female_85_And_Over
										FROM '
				
					
					DECLARE @SQL_2 NVARCHAR(MAX)				
					SET @SQL_2 = '
							WHERE 1 = 1
								AND Summary_Level = 160) A
						UNPIVOT
						(
						Count_By_Race_Gender_Age
						FOR Race_Gender_Age IN (White_Male_Under_5
												, White_Male_5_To_9
												, White_Male_10_To_14
												, White_Male_15_To_17
												, White_Male_18_To_19
												, White_Male_20_To_24
												, White_Male_25_To_29
												, White_Male_30_To_34
												, White_Male_35_To_44
												, White_Male_45_To_54
												, White_Male_55_To_64
												, White_Male_65_To_74
												, White_Male_75_To_84
												, White_Male_85_And_Over
												, White_Female_Under_5
												, White_Female_5_To_9
												, White_Female_10_To_14
												, White_Female_15_To_17
												, White_Female_18_To_19
												, White_Female_20_To_24
												, White_Female_25_To_29
												, White_Female_30_To_34
												, White_Female_35_To_44
												, White_Female_45_To_54
												, White_Female_55_To_64
												, White_Female_65_To_74
												, White_Female_75_To_84
												, White_Female_85_And_Over
												, Black_Or_African_American_Male_Under_5
												, Black_Or_African_American_Male_5_To_9
												, Black_Or_African_American_Male_10_To_14
												, Black_Or_African_American_Male_15_To_17
												, Black_Or_African_American_Male_18_To_19
												, Black_Or_African_American_Male_20_To_24
												, Black_Or_African_American_Male_25_To_29
												, Black_Or_African_American_Male_30_To_34
												, Black_Or_African_American_Male_35_To_44
												, Black_Or_African_American_Male_45_To_54
												, Black_Or_African_American_Male_55_To_64
												, Black_Or_African_American_Male_65_To_74
												, Black_Or_African_American_Male_75_To_84
												, Black_Or_African_American_Male_85_And_Over
												, Black_Or_African_American_Female_Under_5
												, Black_Or_African_American_Female_5_To_9
												, Black_Or_African_American_Female_10_To_14
												, Black_Or_African_American_Female_15_To_17
												, Black_Or_African_American_Female_18_To_19
												, Black_Or_African_American_Female_20_To_24
												, Black_Or_African_American_Female_25_To_29
												, Black_Or_African_American_Female_30_To_34
												, Black_Or_African_American_Female_35_To_44
												, Black_Or_African_American_Female_45_To_54
												, Black_Or_African_American_Female_55_To_64
												, Black_Or_African_American_Female_65_To_74
												, Black_Or_African_American_Female_75_To_84
												, Black_Or_African_American_Female_85_And_Over
												, American_Indian_And_Alaska_Native_Male_Under_5
												, American_Indian_And_Alaska_Native_Male_5_To_9
												, American_Indian_And_Alaska_Native_Male_10_To_14
												, American_Indian_And_Alaska_Native_Male_15_To_17
												, American_Indian_And_Alaska_Native_Male_18_To_19
												, American_Indian_And_Alaska_Native_Male_20_To_24
												, American_Indian_And_Alaska_Native_Male_25_To_29
												, American_Indian_And_Alaska_Native_Male_30_To_34
												, American_Indian_And_Alaska_Native_Male_35_To_44
												, American_Indian_And_Alaska_Native_Male_45_To_54
												, American_Indian_And_Alaska_Native_Male_55_To_64
												, American_Indian_And_Alaska_Native_Male_65_To_74
												, American_Indian_And_Alaska_Native_Male_75_To_84
												, American_Indian_And_Alaska_Native_Male_85_And_Over
												, American_Indian_And_Alaska_Native_Female_Under_5
												, American_Indian_And_Alaska_Native_Female_5_To_9
												, American_Indian_And_Alaska_Native_Female_10_To_14
												, American_Indian_And_Alaska_Native_Female_15_To_17
												, American_Indian_And_Alaska_Native_Female_18_To_19
												, American_Indian_And_Alaska_Native_Female_20_To_24
												, American_Indian_And_Alaska_Native_Female_25_To_29
												, American_Indian_And_Alaska_Native_Female_30_To_34
												, American_Indian_And_Alaska_Native_Female_35_To_44
												, American_Indian_And_Alaska_Native_Female_45_To_54
												, American_Indian_And_Alaska_Native_Female_55_To_64
												, American_Indian_And_Alaska_Native_Female_65_To_74
												, American_Indian_And_Alaska_Native_Female_75_To_84
												, American_Indian_And_Alaska_Native_Female_85_And_Over
												, Asian_Male_Under_5
												, Asian_Male_5_To_9
												, Asian_Male_10_To_14
												, Asian_Male_15_To_17
												, Asian_Male_18_To_19
												, Asian_Male_20_To_24
												, Asian_Male_25_To_29
												, Asian_Male_30_To_34
												, Asian_Male_35_To_44
												, Asian_Male_45_To_54
												, Asian_Male_55_To_64
												, Asian_Male_65_To_74
												, Asian_Male_75_To_84
												, Asian_Male_85_And_Over
												, Asian_Female_Under_5
												, Asian_Female_5_To_9
												, Asian_Female_10_To_14
												, Asian_Female_15_To_17
												, Asian_Female_18_To_19
												, Asian_Female_20_To_24
												, Asian_Female_25_To_29
												, Asian_Female_30_To_34
												, Asian_Female_35_To_44
												, Asian_Female_45_To_54
												, Asian_Female_55_To_64
												, Asian_Female_65_To_74
												, Asian_Female_75_To_84
												, Asian_Female_85_And_Over
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_Under_5
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_5_To_9
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_10_To_14
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_15_To_17
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_18_To_19
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_20_To_24
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_25_To_29
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_30_To_34
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_35_To_44
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_45_To_54
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_55_To_64
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_65_To_74
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_75_To_84
												, Native_Hawaiian_And_Other_Pacific_Islander_Male_85_And_Over
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_Under_5
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_5_To_9
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_10_To_14
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_15_To_17
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_18_To_19
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_20_To_24
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_25_To_29
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_30_To_34
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_35_To_44
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_45_To_54
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_55_To_64
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_65_To_74
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_75_To_84
												, Native_Hawaiian_And_Other_Pacific_Islander_Female_85_And_Over
												, Some_Other_Race_Male_Under_5
												, Some_Other_Race_Male_5_To_9
												, Some_Other_Race_Male_10_To_14
												, Some_Other_Race_Male_15_To_17
												, Some_Other_Race_Male_18_To_19
												, Some_Other_Race_Male_20_To_24
												, Some_Other_Race_Male_25_To_29
												, Some_Other_Race_Male_30_To_34
												, Some_Other_Race_Male_35_To_44
												, Some_Other_Race_Male_45_To_54
												, Some_Other_Race_Male_55_To_64
												, Some_Other_Race_Male_65_To_74
												, Some_Other_Race_Male_75_To_84
												, Some_Other_Race_Male_85_And_Over
												, Some_Other_Race_Female_Under_5
												, Some_Other_Race_Female_5_To_9
												, Some_Other_Race_Female_10_To_14
												, Some_Other_Race_Female_15_To_17
												, Some_Other_Race_Female_18_To_19
												, Some_Other_Race_Female_20_To_24
												, Some_Other_Race_Female_25_To_29
												, Some_Other_Race_Female_30_To_34
												, Some_Other_Race_Female_35_To_44
												, Some_Other_Race_Female_45_To_54
												, Some_Other_Race_Female_55_To_64
												, Some_Other_Race_Female_65_To_74
												, Some_Other_Race_Female_75_To_84
												, Some_Other_Race_Female_85_And_Over
												, Two_Or_More_Races_Male_Under_5
												, Two_Or_More_Races_Male_5_To_9
												, Two_Or_More_Races_Male_10_To_14
												, Two_Or_More_Races_Male_15_To_17
												, Two_Or_More_Races_Male_18_To_19
												, Two_Or_More_Races_Male_20_To_24
												, Two_Or_More_Races_Male_25_To_29
												, Two_Or_More_Races_Male_30_To_34
												, Two_Or_More_Races_Male_35_To_44
												, Two_Or_More_Races_Male_45_To_54
												, Two_Or_More_Races_Male_55_To_64
												, Two_Or_More_Races_Male_65_To_74
												, Two_Or_More_Races_Male_75_To_84
												, Two_Or_More_Races_Male_85_And_Over
												, Two_Or_More_Races_Female_Under_5
												, Two_Or_More_Races_Female_5_To_9
												, Two_Or_More_Races_Female_10_To_14
												, Two_Or_More_Races_Female_15_To_17
												, Two_Or_More_Races_Female_18_To_19
												, Two_Or_More_Races_Female_20_To_24
												, Two_Or_More_Races_Female_25_To_29
												, Two_Or_More_Races_Female_30_To_34
												, Two_Or_More_Races_Female_35_To_44
												, Two_Or_More_Races_Female_45_To_54
												, Two_Or_More_Races_Female_55_To_64
												, Two_Or_More_Races_Female_65_To_74
												, Two_Or_More_Races_Female_75_To_84
												, Two_Or_More_Races_Female_85_And_Over
											)
								) AS UnpivotEx
						) A
						WHERE 1 = 1
							AND Count_By_Race_Gender_Age != 0'
				
				
					EXEC(@SQL_1 + @Ext_State + @SQL_2)
					
				SET @Main_LOOP_NUM = @Main_LOOP_NUM + 1	
					
			END		
					
END