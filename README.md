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
I have choosen MySQL as my tool to clean, transform and analyze the data
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
  <li><a href="">Link Text</a></li>
</ul>




