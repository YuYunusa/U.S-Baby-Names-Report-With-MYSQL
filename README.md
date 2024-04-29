# U.S-Baby-Names-Report-With-MYSQL

### Project Objective
This project aims to provide insight into the most common baby names with respect to gender, year, state, and region of the U.S

### Data Source
The dataset used in this project is 'U.S Baby Names' and it was gotten from the Maven analytics portal. The dataset consists of 2 tables, the 'names' table
which consists of over 2 million rows and 5 columns, and the 'regions' table which contains 50 rows and 2 columns.

### Tools
- MYSQL
  This was used to load, clean, manipulate, and analyze the data

### Data Cleaning
The 'names' table was already clean, the 'regions' table on the other hand had incorrect values. I correctly renamed the regions, and assigned each region
the correct 'state' related to them.

![Screenshot (82)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/af2cec55-26f9-489c-8721-6a9e3f6ab4cc)
![Screenshot (83)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/53e56a65-e51a-4f33-bf1a-9d4cca550036)


### Baby Name Analysis
A total of 22,240 names were used throughout the dataset and a total of 98,730,863 babies were named, split into 52,874.085 Male & 45,856,778 Female.

#### - Top 10 Most Common Baby Names
  * Michael   (1,382,856 babies named)
    
  * Christopher	(1,122,213 babies named)
    
  * Matthew	  (1,034,494 babies named)
    
  * Joshua	  (960,170 babies named)
    
  * Jessica  	(865,046 babies named)
    
  * Daniel  	(824,208 babies named)
    
  * David   	(819,479 babies named)
    
  * Ashley   	(792,865 babies named)
    
  * James   	(766,789 babies named)
    
  * Andrew  	(761,824 babies named)
    
![Screenshot (84)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/119836d9-c046-47a9-9421-4b4e577217fc)

### - Top 10 Least Common Baby Names
  * Aaminah 	(5 babies named)
    
  * Aadarsh 	(5 babies named)
    
  * Aamiyah 	(5 babies named)
    
  * Aaric	    (5 babies named)
    
  * Aalijah	  (5 babies named)
    
  * Aadil	    (5 babies named)
    
  * Aadin	    (5 babies named)
    
  * Zyshonne	(5 babies named)
    
  * Aalliyah	(5 babies named)
    
  * Aamori   	(5 babies named)
    
![Screenshot (97)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/3311ce55-90ae-47af-b423-393e291277bb)

#### - Most Common Names By Gender
  * Michael	    M  (1,376,418 babies named)
    
  * Christopher	M  (1,118,253 babies named)
    
  * Matthew	    M  (1,031,984 babies named)
    
  * Joshua	    M  (957,518 babies named)
    
  * Daniel    	M  (821,281 babies named)

  
  * Jessica   	F  (863,121 babies named)
    
  * Ashley    	F  (786,945 babies named)
    
  * Jennifer	  F  (652,244 babies named)
    
  * Sarah 	    F  (621,174 babies named)
    
  * Amanda    	F  (607,253 babies named)
    
![Screenshot (91)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/5a7609bb-7b7f-432c-9406-2d894a0c3d17)

![Screenshot (92)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/3fc99480-c653-4c69-a1fb-09aaea7af698)

#### - Top Baby Name By Region
  * Mid Atlantic: Michael	 (295,951 babies named)
     
  * Midwest: Michael (269,613 babies named)
    
  * New England: Michael (87,189 babies named)
    
  * Pacific Coastal: Michael (200,969 babies named)
    
  * Rocky Mountains: Michael (471,44 babies named)
    
  * South East:	Christopher	(299,843 babies named)
    
  * South West:	Michael	(138,296 babies named)
    
![Screenshot (96)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/f5769c58-f98a-4f77-96bb-8dbe6e49905f)

#### - Top 10 Most Common Baby Name by State
  * CA	Michael	     M	(157,341 babies named)
    
  * NY	Michael	     M	(124,779 babies named)
     
  * TX	Christopher  M	(94,932 babies named)
    
  * PA	Michael	     M	(72,605 babies named)
      
  * IL	Michael	     M	(71,464 babies named)
    
  * FL	Michael	     M	(69,226 babies named)
    
  * OH	Michael	     M	(62,015 babies named)
    
  * NJ	Michael	     M	(59,586 babies named)
    
  * MI	Michael	     M	(51,447 babies named)
    
  * MA	Michael	     M	(43,608 babies named)
    
![Screenshot (105)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/00774753-0ebc-49d4-b7dd-e143df98cac2)


#### - Most Common Baby Name Yearly
 * 1980 - 1998: Michael (1,098,051 babies named)
   
 * 1999 - 2008: Jacob (288,138 babies named)
   
 * 2009: Isabella (22,289 babies named)
![Screenshot (93)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/0672cf5b-3329-4eee-8d4e-55c45212a870)
![Screenshot (95)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/a4a98039-1073-4738-a586-43acffc573d3)

#### - Average percentage of Babies Named yearly by Gender
  * Male:  53.6%
    
  * Female:  46.4%

![Screenshot (89)](https://github.com/YuYunusa/U.S-Baby-Names-Report-With-MYSQL/assets/160647840/86c42301-3f46-46d4-8e13-e654890f21c0)

### Insights
- The most common name is Michael.

- The most common male name is 'Michael' & the most common female name is 'Jessica'.

- 'Michael' dominates 6 (Mid Atlantic, Midwest, New England, Pacific Coastal, Rocky Mountains, South West) out of the 7 regions as the most common baby name, 
  while 'Christopher' is the most common baby name of the last region (South East).

- 36 out of the 51 states have 'Michael' as the most common baby name, 8 states have 'Christopher' as the most common baby name, 5 states have 'Joshua' as the
  most common baby name, and 'Mathew' was the most common baby name in 2 states.

- 1990 had the most babies named with 3,566,753 and 1980 had the fewest babies named with a number of 3,130,607.

- 'Michael' was the most common baby name from 1980 to 1998, followed by 'Jacob' from 1999 to 2008, and lastly 'Isabella' in the year 2009.

- On average, there are 7.2% more male babies born than female babies from the year 1980 to 2009.
