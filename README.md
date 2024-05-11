This repo is about  the final deliverable for the Google Data Analytics Capstone project. I started this certification program through Coursera in June 2023 and completed it in Dec 2023. Throughout each course in the Google Data Analytics Certificate, I developed the skills such as structured thinking, Storytelling, Excel, Tableau, SQL, and R. Through this project I am demonstrating the skills needed to transition into a career in data analytics.
<h2><strong>Introduction</strong></h2>
The main purpose of this study is to analyze well cleaned and processed data and get insights. These insights would enable the Cyclistic Executive team make data driven decisions as regards marketing strategies that would be aimed at converting casual riders into annual riders.
<h2><strong>Background</strong></h2>
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.
<h2><strong>Scenario</strong></h2>
“You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.”
<h2><strong>Stakeholders</strong></h2>
<ul>
  <li>Cyclistic Excutive Team</li>
  <li>Cyclistic Marketing Analytics Team</li>
  <li>Lili Moreno - Director of Marketing</li>
</ul>
<h2><strong>Business Task</strong></h2>
To determine the differences in how both annual members and casual riders use Cyclistic bikes and to use the insights derived from this to determine best marketing strategies that would convert casual riders to annual members.
<h2><Strong>Data Source</Strong></h2>
The data used would cover rider information spanning a one-year period from January 2022 to December 2022.
The data has been made available by Motivate International Inc. with <a href="https://divvybikes.com/data-license-agreement">license</a>,and is originally stored in separate CSV files organized by the different months of the year <a href="https://divvy-tripdata.s3.amazonaws.com/index.html">here</a>!
<h2><strong> Data Processing</strong></h2>
I have choosen MySQL as my tool to clean and transform the data.
<strong>Data_cleaning_Steps</strong>
<ul>
  <li>I created a table with proper data type and imported all csv files into single table.</li>
  <li>Excluded Geographic data.</li>
  <li>Removed Duplicate Rows.</li>
  <li>Checked for typos and other anomolies.</li>
  <li>Removed rows where start time is greater than the end time</li>
  <li>Removed rows which had null values in start station and end station name.</li>
  <li>Created new columns which had ride length duration, weekdays, months, hours in a days </li>
  <li>Excluded outliers like trips with less than 1 min duration.</li>
</ul>
You can see my data cleaning and manipulation stepls
<ul>
  <li><a href="https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/blob/main/Data%20Importing.sql">Data Importing</a></li>
  <a href="https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/blob/main/Data%20cleaning%20%26%20Transforimng.sql">Data cleaning & Transforming</a>
</ul>
<h2><strong>Data Analyzing</strong></h2>
I used MySQL as my tool for Analyzing my data. I wanted to analyze the pattern between two users i.e Casual users and Annual users.
<strong>Analyzing_steps</strong>
Explored and extracted following points from dataset
<ul>
  <li>Total count of rides made by Casual and Member users.</li>
  <li>Total rides made on each day of week.</li>
  <li>Calculated total,mean,max,min of of ride duration for each users.</li>
  <li>Number of rides made on each months.</li>
  <li>Number of rides made on each hour in a day.</li>
  <li>Total number of users for each bike type. </li>
  <li>Average ride length for weekdays , months and hour in a day.</li>
  <li>Top 5 crowded start and end station name.</li>
</ul>
You can check my analysis work <a href="https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/blob/main/bikeshare_analysis.sql">Bikshare Analysis</a>
<h2><strong>Data Visualization</strong></h2>
Tools used :- Power Query and Power Bi for chart visualization.
<h3><strong>Total rides by each user type</strong></h3>

![dash1](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/6178b6c8-7ecd-4550-a254-529a2c2a7341)

With this we can see that Annual members share of 59% total rides, and Casual member share 40% of total rides.
<h3><strong>Total rides by Bike type and User type</strong></h3>

![dash 2](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/47f3c256-db52-448a-b5ce-457bef08f867)

Classic Bikes were preferred among both customers types, making up 60% of the rides. Electric bikes made up 37% of rides. Only casual riders chose Docked bikes, making up only 4% of all rides taken. 
<h3><strong>Most popular Bike Stations</strong></h3>

![dash3](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/2d15593c-b38b-40f1-b3b7-1c8b9c874e39)

Amongst Top 5 most crowded start station name, Streeter Dr & Grand Ave was most popular station overall.
<h3><strong>Total Rides by Weekdays</strong></h3>

![dash5](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/ef9dd63f-a81c-4b1f-a344-e2afe6f16a78)
Casual riders rode most frequently on weekends, specifically Saturdays. Members rode consistently throughout the week peaking on Wednesday, indicating that members most likely use this service for purpose of work-related - like commuting or everyday to-dos. 
<h3><strong>Total Rides by each Month</strong></h3>

![dash6](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/028f6783-e212-433c-9f68-ff2ca3f28b15)
In the middle to late summer months, particularly from July to September, biking activity peaked. Among casual riders, July saw the highest activity, whereas for members, August was the busiest. Conversely, winter, notably January, experienced the least biking activity for both groups. These findings suggest that both groups prefer biking during warmer months.
<h3><strong>Total Rides per Hour</strong></h3>

![dash7](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/fa81842a-550e-4e16-9ada-5a1456d45633)
The hours are represented in a 24-hour clock starting from midnight (12 AM). The busiest time was from 4 PM to 6 PM. Members tended to use bikes more at 8 AM and 5 PM. Casual riders showed a gradual increase in bike usage from 12 PM to 5 PM, reaching a peak at 5 PM. Casual riders generally had longer ride lengths compared to members. 
<h3><strong>Dashborad Created for the Company Cyclistic</strong></h3>

![ss1](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/291a2229-3975-4710-9505-25770a4f2583)


![ss2](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/25838df4-23c8-4fdc-8b09-4cece3b8e3fe)


![ss3](https://github.com/Kashish0612/Google-Case-Study-Cyclistic-Bikeshare-Analysis/assets/134590814/10fb68c7-b5e7-49c9-9947-ce6215fc9d8c)

Dashborad is uploaded to <a href="https://app.powerbi.com/links/6GzopzQsJw?ctid=9d71812b-a76c-451c-ab94-9d5d3383258e&pbi_source=linkShare&bookmarkGuid=61baa16f-bd01-4574-86ee-426fe79b2865">Power Bi</a> can be used by company for for live monitoring the data.
<h3><strong>Recommendations</strong></h3>
My recommendations for the Cyclistic Marketing Executive and Lily Moreno are
<ul>
  <li>Promotional Incentives - Offer limited-time discounts or incentives such as bonus, ride credits or referral reward to encourage casual riders to sign up for annual memberships.</li>
  <li>Trial Periods - Provide short-term trial period for casual riders to experience the benefits of annual memberships, allowing them to test the service before committing long-term.</li>
  <li>Targeted Marketing - Utilize targeted digital marketing campaigns tailored to the interests and preferences of casual riders, highlighting the convenience, savings, and environmental benefits of annual memberships.</li>
  <li> Location Preferences - Expand the bike stations network to cover a wide range of locations, including downtown areas, popular attractions, and transit hubs, ensuring convenient access for both commuting and leisure riding purposes.</li>
</ul>





