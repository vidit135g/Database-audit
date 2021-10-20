# Database-auditing

<img src="https://www.synopsys.com/content/dam/synopsys/sig-assets/images/owasp-top-10.jpg.imgw.850.x.jpg"/>

The Open Web Application Security Project® (OWASP) is a nonprofit foundation that works to improve the security of software. 
Through community-led open-source software projects, hundreds of local chapters worldwide, tens of thousands of members, and leading educational and training conferences, the OWASP Foundation is the source for developers and technologists to secure the web.

What are the latest OWASP Top 10 categories?

The OWASP Top 10 2017 includes the following: 

1. Injection. A code injection occurs when invalid data is sent by an attacker into a web application. The attacker’s intent in doing so is to make the application do something it was not designed to do.

Example: SQL injection is one of the most common injection flaws found in applications. SQL injection flaws can be caused by use of untrusted data by an application when constructing a vulnerable SQL call.
Solution: Source code review is the best way to prevent injection attacks. Including SAST and DAST tools in your CI/CD pipeline helps to identify injection flaws that have just been introduced. This allows you to identify and mitigate them before production employment [i].
 
2. Broken Authentication.  Certain applications are often improperly implemented. Specifically, functions related to authentication and session management, when implemented incorrectly, allow attackers to compromise passwords, keywords, and sessions. This can lead to stolen user identity and moreii.

Example: A web application allows the use of weak or well-known passwords (i.e. “password1”).
Solution: Multi-factor authentication can help reduce the risk of compromised accounts. Automated static analysis is highly useful in finding such flaws while manual static analysis can add strength in evaluating custom authentication schemes. Synopsys’ Coverity SAST solution includes a checker that specifically identifies broken authentication vulnerabilities. 
 
3. Sensitive Data Exposure. Sensitive data exposure is when important stored or transmitted data (such as social security numbers) is compromised.

Example: Financial institutions that fail to adequately protect their sensitive data can be easy targets for credit card fraud and identity theft.  
Solution: SAST tools such as Coverity and SCA tools such as Black Duck Binary Analysis include features and checkers that identify security vulnerabilities that can result in sensitive data exposure. 
 
4. XML External Entities (XXE). Attackers are able to take advantage of web applications that use vulnerable component processing XML’s. Attackers are able to upload XML or include hostile commands or content within an XML document.

Example:  An application allows untrusted sources to perform XML uploads.
Solution: Static application security testing (SAST) is very helpful at detecting XXE in source code. SAST helps inspect both application configuration and dependencies.
 
5. Broken Access Control. Broken access control is when an attacker is able to get access to user accounts. The attacker is able to operate as the user or as an administrator in the system.

Example: An application allows a primary key to be changed. When the key is changed to another user’s record, that user’s account can be viewed or modified.
Solution: It is critical to use penetration testing in order to detect unintended access-controls. Changes in architecture and design may be warranted to create trust boundaries for data access [iii].
 
6. Security Misconfiguration. Security misconfigurations are when design or configuration weaknesses result from a configuration error or shortcoming.

Example:  A default account and its original password are still enabled, making the system vulnerable to exploit.
Solution: Solutions like Synopsys’ Coverity SAST include a checker that identifies information exposure available through an error message [ii]. 
 
7. Cross-Site Scripting (XSS). XSS attacks occur when an application includes untrusted data on a webpage. Attackers inject client-side scripts into this webpage.

Example: Untrusted data in an application allow for an attacker to ‘steal a user session’ and gain access to the system.
Solution: SAST solutions well versed in data flow analysis can be a great tool to help find these critical defects and suggest remedies. The OWASP website also provides a cheat sheet to best practices to eliminate such defects from your code. For OWASP Top 10 categories like XSS, that also have a Common Weakness Enumerator (CWE), Black Duck will alert teams that this is the weakness that lead to the vulnerability, enabling them to better understand the vulnerability and prioritize their remediation efforts [ii].
 
8. Insecure Deserialization. Insecure Deserialization is a vulnerability where deserialization flaws allow an attacker to remotely execute code in the system.

Example: An application is vulnerable because it deserializes hostile objects that were supplied by an attacker.
Solution: Application security tools help detect deserialization flaws and Penetration testing can be used to validate the problem [ii].
9. Using Components With Known Vulnerabilities. This vulnerability’s title states its nature; it describes when applications are built and run using components that contain known vulnerabilities.

Example: Due to the volume of components used in development, a development team may not even know or understand the components used in their application. This can result in them being out-of-date and therefore vulnerable to attack.
Solution: Software composition analysis (SCA) tools like Black Duck can be used alongside static analysis to identify and detect outdated and insecure components in your application [ii]. 
 
10. Insufficient Logging And Monitoring. Logging and monitoring are activities that should be performed to a website frequently, to guarantee it is secure. Failure to adequately log and monitor a site leaves it vulnerable to more severe compromising activities.

Example: Events that can be audited, like logins, failed logins, and other important activities, are not logged, leading to a vulnerable application.
Solution: After performing Penetration testing, developers can study the test logs to identify possible shortcomings and vulnerabilities.  SAST solutions can also help identify unlogged security exceptions [ii]. 
