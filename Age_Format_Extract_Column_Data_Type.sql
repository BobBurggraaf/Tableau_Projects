/*********************************************************
    Name: Format Extract Column Data Type Script
    Date: 01/31/17

*********************************************************/

BEGIN
	
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
			
			
				
				
				DECLARE @Second_Total_Loop_Num INT
					SELECT @Second_Total_Loop_Num = (
						SELECT MAX(Age_Column_Names_Key) AS Max_Field
							FROM Age.Age_Column_Names
					)
				DECLARE @Second_LOOP_NUM INT
				SET @Second_LOOP_NUM = 1
					WHILE  @Second_LOOP_NUM <= @Second_Total_Loop_Num 
					BEGIN
				
						DECLARE @Column_Name NVARCHAR(100)
						SELECT @Column_Name = (
							SELECT Age_Column_Names 
								FROM Age.Age_Column_Names
								WHERE 1 = 1
									AND Age_Column_Names_Key = @Second_LOOP_NUM
						)
						
						DECLARE @SQL_1 NVARCHAR(MAX)
						DECLARE @SQL_2 NVARCHAR(MAX)		
						DECLARE @SQL_3 NVARCHAR(MAX)
									
						SET @SQL_1 = 'ALTER TABLE Age.Ext_'
						SET @SQL_2 = ' ALTER COLUMN ' 
						SET @SQL_3 = ' FLOAT'
			
						DECLARE @SQL_4 NVARCHAR(MAX)
						SET @SQL_4 = CONCAT(@SQL_1,@StateAbb,@SQL_2,@Column_Name,@SQL_3)
						
						EXEC(@SQL_4)
						
						SET @Second_LOOP_NUM = @Second_LOOP_NUM + 1	
						
					END
					
			SET @Main_LOOP_NUM = @Main_LOOP_NUM + 1	
		
		END
			
END