# Server Outage Incident report
> By Foster Adu-Gyamfi

![](https://t3.ftcdn.net/jpg/04/92/09/72/240_F_492097246_yagE8x9Uk8M9IekPy7GBuE0x1Uoa7esD.jpg)

On June 1st, 2023, we encountered a server outage across our entire infrastructure, leading to a disruption in our services and preventing our clients from utilizing them. We deeply regret the inconvenience caused and extend our sincere apologies for the financial losses incurred by our clients during this period.

## Summary Report
![](https://www.cienotes.com/wp-content/uploads/2019/07/summaryblackboard.jpg)

On June 1st, 2023, at 10am GMT +1, we encountered a server outage (downtime) across our entire server infrastructure, which persisted for 37 minutes. This unfortunate incident resulted in our clients experiencing an HTTP 500 error, causing a complete and severe impact of 100% on their businesses, as they were unable to access our services. We deeply regret the disruption caused and take full responsibility for the incident.

Upon investigation, it was determined that the root cause of the outage was the failure to adequately test all implemented upgrades before pushing them to production servers. This oversight led to the unforeseen server issues that ultimately caused the service disruption. We understand the gravity of this oversight and are taking immediate steps to prevent similar incidents from occurring in the future.

We sincerely apologize for any financial losses, inconvenience, and frustration our clients may have experienced as a result of this incident. We value our clients' trust and will work diligently to regain it by implementing more rigorous testing procedures and enhancing our infrastructure's stability.

## Timeline (all time in GMT + 1)
![](https://www.ncbar.org/wp-content/uploads/2022/02/Timeline-Visual-300x145.png)

| Time (GMT + 1) | Actions |
| -------------- | -------- |
| 9:45 AM | Upgrades implementation begins |
| 10:00AM | Server Outage begins |
| 10:00AM | Pagers alerted on-call team |
| 10:10AM | On-call team acknowledgement |
| 10:15AM | Rollback initiation begins |
| 10:20AM | Successful rollback|
| 10:20AM | Server restart initiated|
| 10:22AM | 100% of traffic back online |

## Root cause
![](https://blog.systemsengineering.com/hs-fs/hubfs/blog-files/Root%20Cause.jpg?width=600&name=Root%20Cause.jpg)

At 9:45am (GMT +1), a server upgrade was initiated on all our production servers without following the standard procedure of releasing it on our test environments and conducting the necessary unit testing. Unfortunately, a portion of the upgrade that was shipped to the production servers included a new implementation that required authentication from a 3rd party software. However, this new implementation was not compatible with the current version present on our servers, leading to the subsequent downtime experienced.

Upon discovering the issue, we promptly resolved it by performing a rollback to restore the servers to their previous state. Afterward, we proceeded with upgrading the current version on our servers to ensure compatibility and prevent any future disruptions.

We sincerely apologize for the inconvenience caused by this oversight. We understand the impact it had on our clients' ability to access our services and the resulting downtime. We take full responsibility for this error and have already taken steps to prevent similar occurrences in the future.

Moving forward, we will reinforce our procedures to ensure proper testing and compatibility checks are conducted before any upgrades are deployed to production servers. Our team is committed to maintaining the stability and reliability of our infrastructure and services to avoid any further interruptions.

Once again, we apologize for any inconvenience caused and appreciate your understanding as we strive to improve our processes and prevent such incidents from happening again.

## Preventive measures
![](https://cdn-ccchn.nitrocdn.com/eoxXytShChgscESECFYcqdYPaOaOGMwn/assets/images/optimized/rev-fbc0c0e/wp-content/uploads/2021/06/prevent-incidents.png)

- Pushing all intended changes first to our test environments before shipping to life server.
- Increase the performance metrics threshold to alert on-call engineers in the event of possible server crash. 
