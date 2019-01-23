## Reservation Data Analysis Project Questionnaire

### Project Data Points
1. Across all reservation partners for January & February, how many completed reservations occurred?
135

2. Which studio has the highest rate of reservation abandonment (did not cancel but did not check-in)?
flushing-crossfit

3. Which fitness area (i.e., tag) has the highest number of completed reservations for February?
Yoga

4. How many members completed at least 1 reservation and had no more than 1 cancelled reservation in January?
28

5. At what time of day do most users book classes? Attend classes? (Morning = 7-11 AM, Afternoon = 12-4 PM, Evening = 5-10 PM)
Attend Classes - Morning
Booking Classes – Evening. One caveat, it doesn’t look like the Clubready dataset has a field that notes when the class was booked

6. How many confirmed completed reservations did the member (ID) with the most reserved classes in February have?
5

7. Write a query that unions the `mindbody_reservations` table and `clubready_reservations` table as cleanly as possible. See Github repository

### Project Discussion
1. What opportunities do you see to improve data storage and standardization for these datasets?
We could create a staging table that would union the datasets and place them in a standardized format that we could use for analysis, BI Tools, etc. The standardization would come in the form of field names, data types, and custom fields that would be beneficial to the data team. For example, “class_time_at” in the Mindbody dataset and “reserved_for” in the Clubready dataset seemed to contain the same information; the staging table would create a standardized name such as “Reservation date/time.” Furthermore, the union of the datasets would allow for analysis across the entire member reservation data rather than having to run two of the same analysis with two different data sets. 

2. What forecasting opportunities do you see with a dataset like this and why?
The datasets in the project would be ideal for driving sales strategy in a variety of ways, but especially (and I think one of the most important) the class tags. The ability to understand what types of classes are our members drawn to the most is very important with regards to sales strategy. We saw that Yoga was a class tag that had a large amount of reservations; that data point tells us that members are looking to go to Yoga studios. Therefore, we could draft a sales strategy that would target Yoga studios. Or if we saw that cycling classes have a high abandon rate, we could decide to put cycling studios on the backburner and focus on the other types of studios.

3. What other data would you propose we gather to make reporting/forecasting more robust and why?
There are several data points I think would be beneficial if we were able to consistently gather. See the points below:
* Studio City/State: Understanding the geographical regions could be a beneficial piece moving forward, especially as Peerfit continues to grow and expand. I think it would be interesting to compare our current mix of studios to large cities or college towns; areas that have started to have more studios opening due to the younger demographic. 
* Average Class Size: The average class size would also be a good data point to gather eventually. It would allow us to ensure we’re focusing our efforts on studios with more opportunity. 
* Operating Expense: This data is like the average class size in that it would allow us to focus on studios with the most opportunity. Ideally, we’d like to be in all studios, but again as we’re working on growing, having a clear line of sight of the types of studios we’d like to focus on is beneficial. 

