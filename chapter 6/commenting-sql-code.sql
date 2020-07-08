# this is single line comment 

/*
this is a multi line comment
*/ 

/*
Created by:  Josephine Bush 
Created on:  November 15, 2019
Purpose:     Selecting distinct rows in appearances table to provide in a report

Modified by  Modified on    Modification notes 
JBush        11/16/19       Changed distinct to include teams and playerids
*/ 

#commenting out a section of your code 
USE lahmansbaseballdb;
SELECT playerid, g_all, g_batting/*, g_defense*/ FROM appearances
LIMIT 500 OFFSET 1000; 