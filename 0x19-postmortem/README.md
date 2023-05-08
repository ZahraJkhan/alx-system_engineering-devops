<h1>Postmortem</h1>

![](https://s3.amazonaws.com/lowres.cartoonstock.com/death-post_mortem-post_mortems-autopsy-mortuary-pathologist-aevn1067_low.jpg)</br>
<h2>Issue Summary:</h2>

<p><strong>Duration:</strong> May 5, 2023, from 10:00 AM to 2:00 PM EAT</p>
<b>Impact:</b> Users experienced slow loading times and intermittent errors when accessing our web application. Approximately 50% of users were affected.</br>
<b>Root Cause:</b> A database connection issue caused the application to slow down and produce errors.

<h2>Timeline:</h2>

| Time           | Actions |
| -------------- | -------- |
| 10:00 AM: | The issue was first detected when a monitoring alert was triggered for slow response times. |
| 10:05 AM: | Engineers investigated the alert and noticed intermittent errors in the application logs. |
| 10:15 AM: | Initial assumption was that the application code was causing the slow response times and errors. |
| 10:30 AM: | Engineers deployed a code rollback to a previous version but the issue persisted. |
| 11:00 AM: | Investigation focused on the infrastructure, specifically the load balancer and web server. |
| 11:30 AM: | Misleading investigation path taken: Engineers suspected a configuration issue with the load balancer but it turned out to be a red herring. |
| 12:00 PM: | The incident was escalated to the database team for further investigation. |
| 1:00 PM:  | Root cause identified as a database connection issue. |
| 1:30 PM:  | The database team implemented a fix and the application started to function normally. |
| 2:00 PM:  | The incident was resolved and users were able to access the application without issues. |

![](http://3.bp.blogspot.com/-HQMCOBTPN5c/T2o4gjgVLaI/AAAAAAAAIIU/3obuv2PQpnk/s1600/root+cause.jpg)</br>

<h2>Root Cause and Resolution:</h2>

<p>The root cause of the issue was a database connection issue. The connection pool had reached its maximum capacity, causing the application to slow down and produce errors. The database team implemented a fix by increasing the connection pool size and optimizing the database queries, which resolved the issue.</p>

![](https://media.makeameme.org/created/brace-yourself-corrective-a353225667.jpg)</br>
<h2>Corrective and Preventative Measures:</h2>

<p>To prevent similar issues from occurring in the future, the following corrective and preventative measures will be implemented:</p>

 - Implement additional monitoring for the database connection pool size and usage.
 - Increase the maximum capacity of the database connection pool.
 - Optimize database queries to reduce the load on the database.
 - Improve the application's error handling to provide better feedback to users when errors occur.
 - Conduct regular load testing to identify potential bottlenecks in the application and infrastructure.
 - Review and improve incident response procedures to ensure timely escalation and resolution of issues.

<p>In conclusion, the web application outage on May 5, 2023, was caused by a database connection issue that resulted in slow response times and errors for approximately 50% of users. The incident was resolved by the database team implementing a fix to increase the connection pool size and optimize database queries. Corrective and preventative measures were also identified to prevent similar issues from occurring in the future</p>
