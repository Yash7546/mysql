SELECT *
FROM MAINDATA;

# CLEANING THE HEADERS
ALTER TABLE maindata CHANGE `%Airline ID` AIRLINE_ID INT;
ALTER TABLE maindata CHANGE `%Carrier Group ID` Carrier_Group_ID INT;
ALTER TABLE maindata CHANGE `%Unique Carrier Code` Unique_Carrier_Code TEXT;
ALTER TABLE maindata CHANGE `%Unique Carrier Entity Code` Unique_Carrier_Entity_Code INT;
ALTER TABLE maindata CHANGE `%Region Code` Region_Code TEXT;
ALTER TABLE maindata CHANGE `%Origin Airport ID` Origin_Airport_ID INT;
ALTER TABLE maindata CHANGE `%Origin Airport Sequence ID` Origin_Airport_Sequence_ID INT;
ALTER TABLE maindata CHANGE `%Origin Airport Market ID` Origin_Airport_Market_ID INT;
ALTER TABLE maindata CHANGE `%Origin World Area Code` Origin_World_Area_Code INT;
ALTER TABLE maindata CHANGE `%Destination Airport ID` Destination_Airport_ID INT;
ALTER TABLE maindata CHANGE `%Destination Airport Sequence ID` Destination_Airport_Sequence_ID INT;
ALTER TABLE maindata CHANGE `%Destination Airport Market ID` Destination_Airport_Market_ID INT;
ALTER TABLE maindata CHANGE `%Destination World Area Code` Destination_World_Area_Code INT;
ALTER TABLE maindata CHANGE `%Aircraft Group ID` Aircraft_Group_ID INT;
ALTER TABLE maindata CHANGE `%Aircraft Type ID` Aircraft_Type_ID INT;
ALTER TABLE maindata CHANGE `%Aircraft Configuration ID` Aircraft_Configuration_ID INT;
ALTER TABLE maindata CHANGE `%Distance Group ID` Distance_Group_ID INT;
ALTER TABLE maindata CHANGE `%Service Class ID` Service_Class_ID TEXT;
ALTER TABLE maindata CHANGE `%Datasource ID` Datasource_ID TEXT;
ALTER TABLE maindata CHANGE `# Departures Scheduled` Departures_Scheduled INT;
ALTER TABLE maindata CHANGE `# Departures Performed` Departures_Performed INT;
ALTER TABLE maindata CHANGE `# Payload` Payload INT;
ALTER TABLE maindata CHANGE `Distance` Distance INT;
ALTER TABLE maindata CHANGE `# Available Seats` Available_Seats INT;
ALTER TABLE maindata CHANGE `# Transported Passengers` Transported_Passengers INT;
ALTER TABLE maindata CHANGE `# Transported Freight` Transported_Freight INT;
ALTER TABLE maindata CHANGE `# Transported Mail` Transported_Mail INT;
ALTER TABLE maindata CHANGE `# Ramp-To-Ramp Time` Ramp_To_Ramp_Time INT;
ALTER TABLE maindata CHANGE `# Air Time` Air_Time INT;
ALTER TABLE maindata CHANGE `Unique Carrier` Unique_Carrier TEXT;
ALTER TABLE maindata CHANGE `Carrier Code` Carrier_Code TEXT;
ALTER TABLE maindata CHANGE `Carrier Name` Carrier_Name TEXT;
ALTER TABLE maindata CHANGE `Origin Airport Code` Origin_Airport_Code TEXT;
ALTER TABLE maindata CHANGE `Origin City` Origin_City TEXT;
ALTER TABLE maindata CHANGE `Origin State Code` Origin_State_Code TEXT;
ALTER TABLE maindata CHANGE `Origin State FIPS` Origin_State_FIPS INT;
ALTER TABLE maindata CHANGE `Origin State` Origin_State TEXT;
ALTER TABLE maindata CHANGE `Origin Country Code` Origin_Country_Code TEXT;
ALTER TABLE maindata CHANGE `Origin Country` Origin_Country TEXT;
ALTER TABLE maindata CHANGE `Destination Airport Code` Destination_Airport_Code TEXT;
ALTER TABLE maindata CHANGE `Destination City` Destination_City TEXT;
ALTER TABLE maindata CHANGE `Destination State Code` Destination_State_Code TEXT;
ALTER TABLE maindata CHANGE `Destination State FIPS` Destination_State_FIPS INT;
ALTER TABLE maindata CHANGE `Destination State` Destination_State TEXT;
ALTER TABLE maindata CHANGE `Destination Country Code` Destination_Country_Code TEXT;
ALTER TABLE maindata CHANGE `Destination Country` Destination_Country TEXT;
ALTER TABLE maindata CHANGE `Year` Years INT;
ALTER TABLE maindata CHANGE `Month (#)` Months INT;
ALTER TABLE maindata CHANGE `Day` Days INT;
ALTER TABLE maindata CHANGE `From - To Airport Code` From_To_Airport_Code TEXT;
ALTER TABLE maindata CHANGE `From - To Airport ID` From_To_Airport_ID TEXT;
ALTER TABLE maindata CHANGE `From - To City` From_To_City TEXT;
ALTER TABLE maindata CHANGE `From - To State Code` From_To_State_Code TEXT;
ALTER TABLE maindata CHANGE `From - To State` From_To_State TEXT;
ALTER TABLE aircraft_groups CHANGE `ï»¿%Aircraft Group ID` Aircraft_Group_ID INT;
ALTER TABLE aircraft_groups CHANGE `Aircraft Group` Aircraft_Group TEXT;
ALTER TABLE aircraft_types CHANGE `ï»¿%Aircraft Type ID` Aircraft_Type_ID TEXT;
ALTER TABLE aircraft_types CHANGE `Aircraft Type` Aircraft_Type TEXT;
ALTER TABLE airlines CHANGE `ï»¿%Airline ID` Airline_ID INT;
ALTER TABLE airlines CHANGE `Airline` Airline TEXT;
ALTER TABLE carrier_groups CHANGE `ï»¿%Carrier Group ID` Carrier_Group_ID INT;
ALTER TABLE carrier_groups CHANGE `Carrier Group` Carrier_Group TEXT;
ALTER TABLE carrier_operating_region CHANGE `ï»¿%Region Code` Region_Code TEXT;
ALTER TABLE carrier_operating_region CHANGE `Carrier's Operating Region` Carriers_Operating_Region TEXT;
ALTER TABLE destination_markets CHANGE `%Destination Airport Market ID` Destination_Airport_Market_ID INT;
ALTER TABLE destination_markets CHANGE `Destination Market` Destination_Market TEXT;
ALTER TABLE distance_groups CHANGE `ï»¿%Distance Group ID` Distance_Group_ID INT;
ALTER TABLE distance_groups CHANGE `Distance Interval` Distance_Interval TEXT;
ALTER TABLE flight_types CHANGE `ï»¿%Datasource ID` Datasource_ID TEXT;
ALTER TABLE flight_types CHANGE `Flight Type` Flight_Type TEXT;
ALTER TABLE origin_markets CHANGE `%Origin Airport Market ID` Origin_Airport_Market_ID INT;
ALTER TABLE origin_markets CHANGE `Origin Market` Origin_Market TEXT;

# DATASETS
select * from maindata ;
select * from aircraft_groups;
select * from aircraft_types;
select * from airlines;
select * from carrier_groups;
select * from carrier_operating_region;	
select * from destination_markets;
select * from distance_groups;
select * from flight_types;
select * from origin_markets;

# CHECKING FOR UNIQUE DATA IN EACH COLUMN
SELECT AIRLINE_ID, COUNT(*) FROM maindata GROUP BY AIRLINE_ID;
SELECT Carrier_Group_ID, COUNT(*) FROM maindata GROUP BY Carrier_Group_ID;
SELECT Unique_Carrier_Code, COUNT(*) FROM maindata GROUP BY Unique_Carrier_Code;
SELECT Unique_Carrier_Entity_Code, COUNT(*) FROM maindata GROUP BY Unique_Carrier_Entity_Code;
SELECT Region_Code, COUNT(*) FROM maindata GROUP BY Region_Code;
SELECT Origin_Airport_ID, COUNT(*) FROM maindata GROUP BY Origin_Airport_ID;
SELECT Origin_Airport_Sequence_ID, COUNT(*) FROM maindata GROUP BY Origin_Airport_Sequence_ID;
SELECT Origin_Airport_Market_ID, COUNT(*) FROM maindata GROUP BY Origin_Airport_Market_ID;
SELECT Origin_World_Area_Code, COUNT(*) FROM maindata GROUP BY Origin_World_Area_Code;
SELECT Destination_Airport_ID, COUNT(*) FROM maindata GROUP BY Destination_Airport_ID;
SELECT Destination_Airport_Sequence_ID, COUNT(*) FROM maindata GROUP BY Destination_Airport_Sequence_ID;
SELECT Destination_Airport_Market_ID, COUNT(*) FROM maindata GROUP BY Destination_Airport_Market_ID;
SELECT Destination_World_Area_Code, COUNT(*) FROM maindata GROUP BY Destination_World_Area_Code;
SELECT Aircraft_Group_ID, COUNT(*) FROM maindata GROUP BY Aircraft_Group_ID;
SELECT Aircraft_Type_ID, COUNT(*) FROM maindata GROUP BY Aircraft_Type_ID;
SELECT Aircraft_Configuration_ID, COUNT(*) FROM maindata GROUP BY Aircraft_Configuration_ID;
SELECT Distance_Group_ID, COUNT(*) FROM maindata GROUP BY Distance_Group_ID;
SELECT Service_Class_ID, COUNT(*) FROM maindata GROUP BY Service_Class_ID;
SELECT Datasource_ID, COUNT(*) FROM maindata GROUP BY Datasource_ID;
SELECT Departures_Scheduled, COUNT(*) FROM maindata GROUP BY Departures_Scheduled;
SELECT Departures_Performed, COUNT(*) FROM maindata GROUP BY Departures_Performed;
SELECT Payload, COUNT(*) FROM maindata GROUP BY Payload;
SELECT Distance, COUNT(*) FROM maindata GROUP BY Distance;
SELECT Available_Seats, COUNT(*) FROM maindata GROUP BY Available_Seats;
SELECT Transported_Passengers, COUNT(*) FROM maindata GROUP BY Transported_Passengers;
SELECT Transported_Freight, COUNT(*) FROM maindata GROUP BY Transported_Freight;
SELECT Transported_Mail, COUNT(*) FROM maindata GROUP BY Transported_Mail;
SELECT Ramp_To_Ramp_Time, COUNT(*) FROM maindata GROUP BY Ramp_To_Ramp_Time;
SELECT Air_Time, COUNT(*) FROM maindata GROUP BY Air_Time;
SELECT Unique_Carrier, COUNT(*) FROM maindata GROUP BY Unique_Carrier;
SELECT Carrier_Code, COUNT(*) FROM maindata GROUP BY Carrier_Code;
SELECT Carrier_Name, COUNT(*) FROM maindata GROUP BY Carrier_Name;
SELECT Origin_Airport_Code, COUNT(*) FROM maindata GROUP BY Origin_Airport_Code;
SELECT Origin_City, COUNT(*) FROM maindata GROUP BY Origin_City;
SELECT Origin_State_Code, COUNT(*) FROM maindata GROUP BY Origin_State_Code;
SELECT Origin_State_FIPS, COUNT(*) FROM maindata GROUP BY Origin_State_FIPS;
SELECT Origin_State, COUNT(*) FROM maindata GROUP BY Origin_State;
SELECT Origin_Country_Code, COUNT(*) FROM maindata GROUP BY Origin_Country_Code;
SELECT Origin_Country, COUNT(*) FROM maindata GROUP BY Origin_Country;
SELECT Destination_Airport_Code, COUNT(*) FROM maindata GROUP BY Destination_Airport_Code;
SELECT Destination_City, COUNT(*) FROM maindata GROUP BY Destination_City;
SELECT Destination_State_Code, COUNT(*) FROM maindata GROUP BY Destination_State_Code;
SELECT Destination_State_FIPS, COUNT(*) FROM maindata GROUP BY Destination_State_FIPS;
SELECT Destination_State, COUNT(*) FROM maindata GROUP BY Destination_State;
SELECT Destination_Country_Code, COUNT(*) FROM maindata GROUP BY Destination_Country_Code;
SELECT Destination_Country, COUNT(*) FROM maindata GROUP BY Destination_Country;
SELECT Year, COUNT(*) FROM maindata GROUP BY Year;
SELECT Month, COUNT(*) FROM maindata GROUP BY Month;
SELECT Day, COUNT(*) FROM maindata GROUP BY Day;
SELECT From_To_Airport_Code, COUNT(*) FROM maindata GROUP BY From_To_Airport_Code;
SELECT From_To_Airport_ID, COUNT(*) FROM maindata GROUP BY From_To_Airport_ID;
SELECT From_To_City, COUNT(*) FROM maindata GROUP BY From_To_City;
SELECT From_To_State_Code, COUNT(*) FROM maindata GROUP BY From_To_State_Code;
SELECT From_To_State, COUNT(*) FROM maindata GROUP BY From_To_State;

# DROPPING IRRELEVANT COLUMNS
ALTER TABLE maindata DROP COLUMN Unique_Carrier_Code;
ALTER TABLE maindata DROP COLUMN Origin_Airport_Sequence_ID;
ALTER TABLE maindata DROP COLUMN Origin_World_Area_Code;
ALTER TABLE maindata DROP COLUMN Destination_Airport_Sequence_ID;
ALTER TABLE maindata DROP COLUMN Destination_World_Area_Code;
ALTER TABLE maindata DROP COLUMN Aircraft_Configuration_ID;
ALTER TABLE maindata DROP COLUMN Service_Class_ID;
ALTER TABLE maindata DROP COLUMN Unique_Carrier;
ALTER TABLE maindata DROP COLUMN Carrier_Code;
ALTER TABLE maindata DROP COLUMN Carrier_Name;
ALTER TABLE maindata DROP COLUMN Origin_Airport_Code;
ALTER TABLE maindata DROP COLUMN Origin_City;
ALTER TABLE maindata DROP COLUMN Origin_State_Code;
ALTER TABLE maindata DROP COLUMN Origin_State_FIPS;
ALTER TABLE maindata DROP COLUMN Origin_Country_Code;
ALTER TABLE maindata DROP COLUMN Destination_Airport_Code;
ALTER TABLE maindata DROP COLUMN Destination_City;
ALTER TABLE maindata DROP COLUMN Destination_State_Code;
ALTER TABLE maindata DROP COLUMN Destination_State_FIPS;
ALTER TABLE maindata DROP COLUMN Destination_Country_Code;
ALTER TABLE maindata DROP COLUMN From_To_Airport_Code;
ALTER TABLE maindata DROP COLUMN From_To_Airport_ID;
ALTER TABLE maindata DROP COLUMN From_To_City;
ALTER TABLE maindata DROP COLUMN From_To_State_Code;
ALTER TABLE maindata DROP COLUMN From_To_State;

# COMBINED TABLE
SELECT MD.AIRLINE_ID,AL.Airline,
		MD.Carrier_Group_ID,CG.Carrier_Group,
        MD.Unique_Carrier_Entity_Code,
        MD.Region_Code,COR.Carriers_Operating_Region,
        MD.Origin_Airport_ID,
        MD.Origin_Airport_Market_ID,OM.Origin_Market,
        MD.Origin_State,MD.Origin_Country,
        MD.Destination_Airport_ID,
        MD.Destination_Airport_Market_ID,DM.Destination_Market,
        MD.Destination_State,MD.Destination_Country,
        MD.Aircraft_Group_ID,AG.Aircraft_Group,
        MD.Aircraft_Type_ID,ATY.Aircraft_Type,
        MD.Distance_Group_ID,DG.Distance_Interval,
        MD.Datasource_ID,FT.Flight_Type,
        MD.Departures_Scheduled,MD.Departures_Performed,
        MD.Payload,MD.Distance,MD.Available_Seats,
        MD.Transported_Passengers,MD.Transported_Freight,MD.Transported_Mail,
        MD.Ramp_To_Ramp_Time,MD.Air_Time,
        MD.Years,MD.Months,MD.Days
FROM maindata AS MD
JOIN AIRLINES AS AL
	ON MD.AIRLINE_ID=AL.AIRLINE_ID
JOIN carrier_groups AS CG
	ON MD.Carrier_Group_ID=CG.Carrier_Group_ID
JOIN carrier_operating_region AS COR
	ON MD.Region_Code=COR.Region_Code
JOIN origin_markets AS OM
	ON MD.Origin_Airport_Market_ID=OM.Origin_Airport_Market_ID
JOIN destination_markets AS DM
	ON MD.Destination_Airport_Market_ID=DM.Destination_Airport_Market_ID
JOIN aircraft_groups AS AG
	ON MD.Aircraft_Group_ID=AG.Aircraft_Group_ID
JOIN aircraft_types AS ATY
	ON MD.Aircraft_Type_ID=ATY.Aircraft_Type_ID
JOIN distance_groups AS DG
	ON MD.Distance_Group_ID=DG.Distance_Group_ID
JOIN flight_types AS FT
	ON MD.Datasource_ID=FT.Datasource_ID;

CREATE TABLE HIGH_CLOUD_AIRLINES
	(AIRLINE_ID int,
    Airline TEXT,
	Carrier_Group_ID int,
    Carrier_Group TEXT,
    Unique_Carrier_Entity_Code int,
    Region_Code TEXT,
    Carriers_Operating_Region TEXT,
    Origin_Airport_ID int,
    Origin_Airport_Market_ID int,
    Origin_Market TEXT,
    Origin_State TEXT,
    Origin_Country TEXT,
    Destination_Airport_ID int,
    Destination_Airport_Market_ID int,
    Destination_Market TEXT,
    Destination_State TEXT,
    Destination_Country TEXT,
    Aircraft_Group_ID int,
    Aircraft_Group TEXT,
    Aircraft_Type_ID int,
    Aircraft_Type TEXT,
    Distance_Group_ID int,
    Distance_Interval TEXT,
    Datasource_ID TEXT,
    Flight_Type TEXT,
    Departures_Scheduled int,
    Departures_Performed int,
    Payload int,
    Distance int,
    Available_Seats int,
    Transported_Passengers int,
    Transported_Freight int,
    Transported_Mail int,
    Ramp_To_Ramp_Time int,
    Air_Time int,
    Years int,
    Months int,
    Days int);
INSERT INTO high_cloud_airlines
SELECT MD.AIRLINE_ID,AL.Airline,
		MD.Carrier_Group_ID,CG.Carrier_Group,
        MD.Unique_Carrier_Entity_Code,
        MD.Region_Code,COR.Carriers_Operating_Region,
        MD.Origin_Airport_ID,
        MD.Origin_Airport_Market_ID,OM.Origin_Market,
        MD.Origin_State,MD.Origin_Country,
        MD.Destination_Airport_ID,
        MD.Destination_Airport_Market_ID,DM.Destination_Market,
        MD.Destination_State,MD.Destination_Country,
        MD.Aircraft_Group_ID,AG.Aircraft_Group,
        MD.Aircraft_Type_ID,ATY.Aircraft_Type,
        MD.Distance_Group_ID,DG.Distance_Interval,
        MD.Datasource_ID,FT.Flight_Type,
        MD.Departures_Scheduled,MD.Departures_Performed,
        MD.Payload,MD.Distance,MD.Available_Seats,
        MD.Transported_Passengers,MD.Transported_Freight,MD.Transported_Mail,
        MD.Ramp_To_Ramp_Time,MD.Air_Time,
        MD.Years,MD.Months,MD.Days
FROM maindata AS MD
JOIN AIRLINES AS AL
	ON MD.AIRLINE_ID=AL.AIRLINE_ID
JOIN carrier_groups AS CG
	ON MD.Carrier_Group_ID=CG.Carrier_Group_ID
JOIN carrier_operating_region AS COR
	ON MD.Region_Code=COR.Region_Code
JOIN origin_markets AS OM
	ON MD.Origin_Airport_Market_ID=OM.Origin_Airport_Market_ID
JOIN destination_markets AS DM
	ON MD.Destination_Airport_Market_ID=DM.Destination_Airport_Market_ID
JOIN aircraft_groups AS AG
	ON MD.Aircraft_Group_ID=AG.Aircraft_Group_ID
JOIN aircraft_types AS ATY
	ON MD.Aircraft_Type_ID=ATY.Aircraft_Type_ID
JOIN distance_groups AS DG
	ON MD.Distance_Group_ID=DG.Distance_Group_ID
JOIN flight_types AS FT
	ON MD.Datasource_ID=FT.Datasource_ID;

ALTER TABLE high_cloud_airlines DROP COLUMN AIRLINE_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Carrier_Group_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Unique_Carrier_Entity_Code;
ALTER TABLE high_cloud_airlines DROP COLUMN Region_Code;
ALTER TABLE high_cloud_airlines DROP COLUMN Origin_Airport_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Origin_Airport_Market_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Destination_Airport_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Destination_Airport_Market_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Aircraft_Group_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Aircraft_Type_ID;
ALTER TABLE high_cloud_airlines DROP COLUMN Datasource_ID;

SELECT *
FROM high_cloud_airlines;

# LOAD FACTOR
ALTER TABLE high_cloud_airlines
ADD COLUMN Load_Factor DECIMAL(10,2);
UPDATE high_cloud_airlines
SET LOAD_FACTOR=CASE 
	WHEN Available_Seats=0 THEN 0
    ELSE ROUND(Transported_Passengers*100/Available_Seats,2)
    END;

# QUARTER
ALTER TABLE high_cloud_airlines
ADD COLUMN QUARTERS VARCHAR(10);
UPDATE high_cloud_airlines
SET QUARTERS= 
			CASE 
				WHEN MONTHS IN (1,2,3) THEN 'Q 1'
                WHEN MONTHS IN (4,5,6) THEN 'Q 2'
                WHEN MONTHS IN (7,8,9) THEN 'Q 3'
                WHEN MONTHS IN (10,11,12) THEN 'Q 4'
			END;

# FINANCIAL QUARTER
ALTER TABLE high_cloud_airlines
ADD COLUMN FINANCIAL_QUARTER TEXT;
UPDATE high_cloud_airlines
SET FINANCIAL_QUARTER=CASE
						WHEN MONTHS BETWEEN 4 AND 6 THEN 'Q 1'
                        WHEN MONTHS BETWEEN 7 AND 9 THEN 'Q 2'
                        WHEN MONTHS BETWEEN 10 AND 12 THEN 'Q 3'
                        ELSE 'Q 4'
					  END;

# DATES
ALTER TABLE high_cloud_airlines
ADD COLUMN DATES DATE;
UPDATE high_cloud_airlines
SET DATES=str_to_date(CONCAT(YEARS,'-',MONTHS,'-',DAYS),'%Y-%m-%d');

# MONTH NAME
ALTER TABLE high_cloud_airlines
ADD COLUMN MONTH_NAME TEXT;
UPDATE high_cloud_airlines
SET MONTH_NAME=monthname(DATES);

# DAY NUMBER
ALTER TABLE high_cloud_airlines
ADD COLUMN DAY_NO INT;
UPDATE high_cloud_airlines
SET DAY_NO=dayofweek(DATES);

# DAY NAME
ALTER TABLE high_cloud_airlines
ADD COLUMN DAY_NAME TEXT;
UPDATE high_cloud_airlines
SET DAY_NAME=dayname(DATES);

# WEEKDAY/WEEKEND
ALTER TABLE high_cloud_airlines
ADD COLUMN WEEKDAY_WEEKEND TEXT;
UPDATE high_cloud_airlines
SET WEEKDAY_WEEKEND=CASE
						WHEN DAY_NAME IN ('Saturday','Sunday')
                        THEN 'WEEKEND'
					ELSE 'WEEKDAY'
                    END;

# FINAL TABLE FOR ANALYSIS
SELECT *
FROM high_cloud_airlines;

# EXPLORATORY DATA ANALYSIS

# YEARLY LOAD FACTOR
SELECT YEARS,
		ROUND(AVG(LOAD_FACTOR),2) AS AVG_LOAD_FACTOR
FROM high_cloud_airlines
GROUP BY YEARS
ORDER BY YEARS ASC;

# QUARTERLY LOAD FACTOR
SELECT QUARTERS,
		ROUND(AVG(LOAD_FACTOR),2) AS AVG_LOAD_FACTOR
FROM high_cloud_airlines
GROUP BY QUARTERS
ORDER BY QUARTERS ASC;

# MONTHLY LOAD FACTOR
SELECT MONTH_NAME,
		ROUND(AVG(LOAD_FACTOR),2) AS AVG_LOAD_FACTOR
FROM high_cloud_airlines
GROUP BY MONTH_NAME,MONTHS
ORDER BY MONTHS ASC;

# CARRIER WISE LOAD FACTOR
SELECT SUBSTRING(Airline,1,locate(':',AIRLINE)-1) AS AIRLINES,
		ROUND(AVG(Load_Factor),2) AS LOAD_FACTOR
FROM high_cloud_airlines
GROUP BY AirlineS
ORDER BY LOAD_FACTOR DESC
LIMIT 10;

# CARRIER WISE PASSENGER 
SELECT DISTINCT(SUBSTRING(Airline,1,locate(':',AIRLINE)-1)) AS AIRLINES,
		SUM(Transported_Passengers) AS PASSENGERS
FROM high_cloud_airlines
GROUP BY AIRLINES
ORDER BY PASSENGERS DESC
LIMIT 10;

# TOP 10 TRAVEL DESTINATION
SELECT SUBSTRING(Destination_Market,1,LOCATE(',',DESTINATION_MARKET)-1) AS DESTINATION,
		SUM(Transported_Passengers) AS NUMBER_OF_PASSENGERS
FROM high_cloud_airlines
GROUP BY DESTINATION
ORDER BY NUMBER_OF_PASSENGERS DESC
LIMIT 10;

# TOP 10 FREIGHT DESTINATION
SELECT SUBSTRING(Destination_Market,1,LOCATE(',',DESTINATION_MARKET)-1) AS DESTINATION,
		SUM(Transported_Freight) AS FREIGHT
FROM high_cloud_airlines
GROUP BY DESTINATION
ORDER BY FREIGHT DESC
LIMIT 10;

# TRAVEL TRENDS
SELECT WEEKDAY_WEEKEND,
	SUM(Transported_Passengers) AS PASSENGERS,
	ROUND(SUM(Transported_Passengers)*100/
    (SELECT SUM(Transported_Passengers) 
		FROM high_cloud_airlines),2) AS TOTAL_PERCENT
FROM high_cloud_airlines
GROUP BY WEEKDAY_WEEKEND;

# DISTANCE WISE LOAD FACTOR
SELECT Distance_Interval,
		ROUND(AVG(Load_Factor),2) AS AVG_LOAD_FACTOR
FROM high_cloud_airlines
GROUP BY Distance_Interval,Distance_Group_ID
ORDER BY Distance_Group_ID;

# MOST TRAVELLED DAYS
SELECT DAY_NAME,
		SUM(Transported_Passengers) AS PASSENGERS
FROM high_cloud_airlines
GROUP BY DAY_NAME,DAY_NO
ORDER BY DAY_NO ASC;

# CARRIER OPERATING REGION
SELECT Carriers_Operating_Region,
		SUM(Transported_Passengers) AS PASSENGERS,
        SUM(Transported_Freight) AS FREIGHT
FROM high_cloud_airlines
GROUP BY Carriers_Operating_Region
ORDER BY PASSENGERS DESC,
		FREIGHT DESC
LIMIT 5;

# CARRIER GROUPS
SELECT DISTINCT(CASE 
				WHEN LOCATE('(',CARRIER_GROUP) THEN 
					SUBSTRING(Carrier_Group,1,LOCATE('(',CARRIER_GROUP)-1) 
				ELSE Carrier_Group 
                END) AS CARRIERS,
		SUM(Transported_Passengers) AS PASSENGERS,
        SUM(Transported_Freight) AS FREIGHT
FROM high_cloud_airlines
GROUP BY CARRIERS
ORDER BY PASSENGERS DESC,
			FREIGHT DESC;

# SEARCH ENGINE
DELIMITER //
CREATE PROCEDURE FLIGHT_INFORMATION
					(IN ORIGIN VARCHAR(100),
                    IN DESTINATION VARCHAR(100))
	BEGIN
		SELECT DATES,
				SUBSTRING(AIRLINE,1,LOCATE(':',AIRLINE)-1) AS AIRLINES,
                Available_Seats,
                Distance,
                Air_Time,
                SUBSTRING(origin_market,1,LOCATE(',',origin_market)-1) AS ORIGIN,
                SUBSTRING(Destination_Market,1,LOCATE(',',DESTINATION_MARKET)-1) AS DESTINATION
        FROM high_cloud_airlines
        WHERE upper(SUBSTRING(origin_market,1,LOCATE(',',origin_market)-1)) = upper(origin)
			AND upper(SUBSTRING(Destination_Market,1,LOCATE(',',DESTINATION_MARKET)-1)) = upper(destination)
		ORDER BY DATES ASC;
    END//
DELIMITER ;

CALL HIGH_CLOUD_AIRLINES.FLIGHT_INFORMATION('MUMBAI','ATLANTA');

