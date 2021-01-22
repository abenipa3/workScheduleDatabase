# workScheduleDatabase

The database of a (fictitious) employee schedule that was based on an existing Excel employee calendar as seen below with SQL Server with the intent to build an application.

<img src="/images/excel-calendar_2019.jpg" width="1280" height="400"/></div>
*A snippet of the Excel Version – Real names purposely not disclosed.*
<br>
<br>
*Output generated below*

| Date        | Employee_ID | Employee_Name     | Time_In     | Time_Out    | Shift         |
| ----------- | ----------- | -----------       | ----------- | ----------- | -----------   | 
| 11/3/2019   | 1           | Freddie Mercury   | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 2           | David Bowie	      | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 3           | Ella Fitzgerald	  | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 4           | Annie Lennox	    | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 5           | Dolores O’Riordan | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 6           | Chaka Khan        | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 7           | Jimi Hendrix      | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 8           | Frank Zappa       | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 9           | Magne Furuholmen  | OFF         | OFF         | WEEKEND       |
| 11/3/2019   | 10          | Sade Adu          | OFF         | OFF         | WEEKEND       |
| 11/4/2019   | 1           | Freddie Mercury   | 9:00AM      | 4:00PM	    |               |
| 11/4/2019   | 2           | David Bowie	      | 9:00AM      | 5:45PM	    |               |
| 11/4/2019   | 3           | Ella Fitzgerald	  | 7:30AM	    | 5:15PM	    | TC            |
| 11/4/2019   | 4           | Annie Lennox	    | 8:00AM	    | 4:30PM	    |               |
| 11/4/2019   | 5           | Dolores O’Riordan | 8:30AM	    | 6:15PM	    |               |
| 11/4/2019   | 6           | Chaka Khan        | 7:00AM	    | 4:45PM	    |               |
| 11/4/2019   | 7           | Jimi Hendrix      | 7:00AM	    | 4:45PM	    | TRAINING      |
| 11/4/2019   | 8           | Frank Zappa       | 7:30AM	    | 5:15PM	    |               |
| 11/4/2019   | 9           | Magne Furuholmen  | 9:00AM	    | 6:00PM	    | TC            |
| 11/4/2019   | 10          | Sade Adu          | 7:00AM	    | 4:45PM	    | TC            |
| 11/5/2019   | 1           | Freddie Mercury   | 9:00AM	    | 6:00PM	    |               |
| 11/5/2019   | 2           | David Bowie	      | 9:00AM	    | 6:45PM	    |               |
| 11/5/2019   | 3           | Ella Fitzgerald	  | 7:30AM	    | 4:30PM	    | TC            |
| 11/5/2019   | 4           | Annie Lennox	    | 8:00AM	    | 4:30PM	    | TC            |
| 11/5/2019   | 5           | Dolores O’Riordan | 8:30AM	    | 6:15PM	    | TC            |
| 11/5/2019   | 6           | Chaka Khan        | 6:00AM	    | 3:45PM	    |               |
| 11/5/2019   | 7           | Jimi Hendrix      | 7:00AM	    | 4:45PM	    | FLEX          |
| 11/5/2019   | 8           | Frank Zappa       | 7:30AM	    | 5:15PM	    | ETO           |
| 11/5/2019   | 9           | Magne Furuholmen  | 9:00AM	    | 6:00PM	    |               |
| 11/5/2019   | 10          | Sade Adu          | 7:00AM	    | 4:45PM	    |               |
| 11/6/2019   | 1           | Freddie Mercury   | 9:00AM	    | 6:00PM	    |               |
| 11/6/2019   | 2           | David Bowie	      | 9:00AM	    | 6:45PM	    |               |
| 11/6/2019   | 3           | Ella Fitzgerald	  | 7:30AM      | 4:30PM      |               |
| 11/6/2019   | 4           | Annie Lennox	    | 8:00AM	    | 4:30PM	    |               |
| 11/6/2019   | 5           | Dolores O’Riordan | 8:30AM	    | 6:15PM	    |               |
| 11/6/2019   | 6           | Chaka Khan        | 6:00AM	    | 3:45PM	    | TC            |
| 11/6/2019   | 7           | Jimi Hendrix      | 7:00AM	    | 4:45PM	    | TC            |
| 11/6/2019   | 8           | Frank Zappa       | 7:30AM	    | 5:15PM	    | ETO           |
| 11/6/2019   | 9           | Magne Furuholmen  | 9:00AM	    | 6:00PM	    |               |
| 11/6/2019   | 10          | Sade Adu          | 7:00AM	    | 4:45PM	    | TC            |
| 11/7/2019   | 1           | Freddie Mercury   | 9:00AM	    | 6:00PM	    |               |
| 11/7/2019   | 2           | David Bowie	      | 9:00AM	    | 6:45PM	    |               |
| 11/7/2019   | 3           | Ella Fitzgerald	  | 7:30AM	    | 4:30PM	    |               |
| 11/7/2019   | 4           | Annie Lennox	    | 8:00AM	    | 4:30PM	    |               |
| 11/7/2019   | 5           | Dolores O’Riordan | 8:30AM	    | 6:15PM	    |               |
| 11/7/2019   | 6           | Chaka Khan        | 7:00AM	    | 4:45PM	    |               |
| 11/7/2019   | 7           | Jimi Hendrix      | 7:00AM	    | 4:45PM	    | ETO           |
| 11/7/2019   | 8           | Frank Zappa       | 7:30AM	    | 5:15PM	    |               |
| 11/7/2019   | 9           | Magne Furuholmen  | 9:00AM	    | 6:00PM	    |               |
| 11/7/2019   | 10          | Sade Adu          | 7:00AM	    | 4:45PM	    |               |
| 11/8/2019   | 1           | Freddie Mercury   | 9:00AM	    | 6:00PM	    |               |
| 11/8/2019   | 2           | David Bowie	      | 9:00AM	    | 6:45PM	    |               |
| 11/8/2019   | 3           | Ella Fitzgerald	  | 7:30AM	    | 4:30PM	    |               |
| 11/8/2019   | 4           | Annie Lennox	    | 8:30AM	    | 6:15PM	    | TC            |
| 11/8/2019   | 5           | Dolores O’Riordan | 8:00AM	    | 4:30PM	    | TC            |
| 11/8/2019   | 6           | Chaka Khan        | 6:00AM	    | 2:30PM	    | FLEX          |
| 11/8/2019   | 7           | Jimi Hendrix      | 7:00AM	    | 4:45PM	    |               |
| 11/8/2019   | 8           | Frank Zappa       | 7:30AM	    | 5:15PM	    | ETO           |
| 11/8/2019   | 9           | Magne Furuholmen  | 9:00AM	    | 6:00PM	    | TC            |
| 11/8/2019   | 10          | Sade Adu          | 7:00AM	    | 3:45PM	    |               |
| 11/9/2019   | 1           | Freddie Mercury   | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 2           | David Bowie	      | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 3           | Ella Fitzgerald	  | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 4           | Annie Lennox	    | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 5           | Dolores O’Riordan | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 6           | Chaka Khan        | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 7           | Jimi Hendrix      | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 8           | Frank Zappa       | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 9           | Magne Furuholmen  | OFF         | OFF         | WEEKEND       |
| 11/9/2019   | 10          | Sade Adu          | OFF         | OFF         | WEEKEND       |

<br>

*Employee Table*

| Employee_ID | Employee_Name     |
| ----------- | -----------       |
| 1           | Freddie Mercury   |
| 2           | David Bowie	      |
| 3           | Ella Fitzgerald	  |
| 4           | Annie Lennox	    |
| 5           | Dolores O’Riordan |
| 6           | Chaka Khan        |
| 7           | Jimi Hendrix      |
| 8           | Frank Zappa       |
| 9           | Magne Furuholmen  |
| 10          | Sade Adu          |

<br>

*Shift Table*

| id          | shiftname     |
| ----------- | -----------   |
| 1           |               |
| 2           | TC            |
| 3           | FLEX          |	    
| 4           | ETO           |
| 5           | ETS	          |
| 6           | ESL           |
| 7           | HOLIDAY       |   
| 8           | JURY DUTY     |
| 9           | TRAINING      |  
| 10          | WEEKEND       |

*Notes:*
- TC = Telecommute
- ETO = Earned Time Off
- ETS = Sick Day
- ESL = Earned Sick Leave
