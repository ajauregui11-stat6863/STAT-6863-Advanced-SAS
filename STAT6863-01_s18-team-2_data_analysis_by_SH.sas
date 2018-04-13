*******************************************************************************;
**************** 80-character banner for column width reference ***************;
* (set window width to banner width to calibrate line length to 80 characters *;
*******************************************************************************;

* set relative file import path to current directory (using standard SAS trick);
X "cd ""%substr(%sysget(SAS_EXECFILEPATH),1,%eval(%length(%sysget(SAS_EXECFILEPATH))-%length(%sysget(SAS_EXECFILENAME))))""";


* load external file that will generate final analytic file;
%include '.\STAT6863-01_s18-team-2_data_preparation';


*******************************************************************************;
* Research Question Analysis Starting Point;
*******************************************************************************;
*
Question: What are the top 5 initial type of service calls that are received by 
the New Orleans Police Department?

Rationale: This should help determine what type of crimes are most common in 
New Orleans, which should help inform the police department as to what 
preventative measures they should take to prevent these crimes.

Note: This compares the column "NOPD_Item" from Calls_for_Service_2016
to the column of the same name from Calls_for_Service_2017 to combine the 
column "InitialTypeText" from each year that has a unique NOPD Item Number.
;


*******************************************************************************;
* Research Question Analysis Starting Point;
*******************************************************************************;
*
Question: What is the most common offender age? 

Rationale: This should help determine what age that most offenders are 
committing crime and whether there is a way to decrease crime at that age.

Note: This compares the column "Item_Number" from Electronic_Police_Report_2016
to the column of the same name from Electronic_Police_Report_2017 to combine the column
"Offender_Age" from each year that has a unique Item Number.
;


*******************************************************************************;
* Research Question Analysis Starting Point;
*******************************************************************************;
*
Question: Are there certain zip codes in New Orleans that are more prone to 
crime than others? 

Rationale: This should help the police department determine if they need to 
increase patrol in certain zip codes or increase their police force in these 
zip codes.

Note: This compares the column "NOPD_Item" from Calls_for_Service_2016
to the column of the same name from Calls_for_Service_2017 to combine the 
column "Zip" from each year that has a unique NOPD Item Number.
;

