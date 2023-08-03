
Installation steps
1.  Install latest nodeJS 
    https://nodejs.org/en/download/
2.  Install Visual studio code
    https://code.visualstudio.com/Download
3.  Open VS code 
4.  Open terminal and Run command "npm install"
5.  Then execute command "npx playwright install"

TO RUN Tests:- npm run test:e2e 
TO generate Report:- npm run report


Creating a simple login test case in Playwright automation using the Page Object pattern. For this example, we'll automate the login process on a fictional website.

Assuming you have already set up Playwright and created a Page Object class (e.g., LoginPage.js) for the login page, here's how the test script would look:
1. Create a Test.js with the Page Object class
2. We first navigate to the login page, then perform two test cases: one for successful login and another for an invalid login attempt. For the invalid login attempt, we capture the error message displayed on the page using the getErrorMessage method from the LoginPage Page Object.

This is a simplified example. In real-world scenarios, you may have more complex login processes, and you can expand the LoginPage class to handle additional interactions and validations. The key idea is to encapsulate the interactions with the login page within the Page Object to keep the test script clean and maintainable.


--Manual Test Case is inside the Test cases foler in the repo.

Hope this will help you to understand the project structure in details.
