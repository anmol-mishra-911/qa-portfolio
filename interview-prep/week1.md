# WEEK 1 INTERVIEW PREP NOTES

## What is SDLC ?
SDLC stands for Software Development Life Cycle.
It has these phases: Requirement, Design, Development, Testing, Deployement, Maintenance.

Testers are important because bugs found early cost less to fix than bugs found in production

## What is STLC
STLC stands for Software Testing Life Cycle.
It happens inside the Testing phase of SDLC.

Phases: Test Planning, Test Design, Environment Setup, Execution, Defect Reporting, Closure.

## Difference between SDLC and STLC
SDLC covers the entire software delivery process.
STLC covers only the testing part inside SDLC.


## Verification vs Validation
Verification = are we building the product right? Example: reviewing requirements documents.
Validation = are we building the right product? Example: actually testing the software.

## Shift Left Testing
This means involving testers early in SDLC instead of only at the end.
The earlier a bug is found, the cheaper it is to fix.
This is what SDET roles are built around


## One real example from my work at Accenture
Write here:
 There was one feature which was a Dashboard kind of thing which was visible by every type of user.
 In that Dashboard there were ideas which were in Plan and estimate stage and Ready for Review and finalize status and there were ideas present which has stage Ready for Review and finalize and status Ready to Allocate , in that there were list of ideas present there where Reviewers can #approve, #change request and #Defer the ideas by simply clicking on it , so there were 5 roles that are needed to be tested one by one : 1. Admin  2.TBM  3.SECURE&CURRENT REVIEWER 4.REVIEWER  5. REVIEWER SUPPORT 6.DOO 
 We missed to check the doo role for change request button and this was caught by us only in prod not by UAT so we got saved  
Which phase should it have been caught in?
 It should have been in caught in test execution phase only 
Why was it not caught earlier?
 We were focused on S&C role bugs and missed DOO role coverage.
 This is a test coverage gap — we did not have a checklist verifying all 6 roles were tested for every action.
 Lesson learned: always use a role-action matrix to ensure no role is missed.

 ## HTTP Methods

GET    - Read data. No body needed.
POST   - Create new data. Send data in body.
PUT    - Replace entire record. Send complete object.
PATCH  - Update part of record. Send only changed fields.
DELETE - Remove data. No body needed.

## PUT vs PATCH difference
PUT replaces the entire object. If you miss a field it gets deleted.
PATCH updates only the fields you send. Rest stays unchanged.


## HTTP Status Codes

### 2xx Success
200 - OK - request succeeded
201 - Created - new resource created (after POST)
204 - No Content - success but nothing returned (after DELETE)

### 4xx Client Errors
400 - Bad Request - wrong format or missing fields
401 - Unauthorized - not logged in
403 - Forbidden - logged in but no permission
404 - Not Found - resource does not exist
422 - Unprocessable - validation failed

### 5xx Server Errors
500 - Internal Server Error - server crashed
502 - Bad Gateway - invalid response from upstream
503 - Service Unavailable - server is down

## 401 vs 403
401 = not logged in at all
403 = logged in but not allowed

## 400 vs 422
400 = request format is wrong
422 = format is correct but values fail validation
## HTTP Status Codes

### 2xx Success
200 - OK - request succeeded
201 - Created - new resource created (after POST)
204 - No Content - success but nothing returned (after DELETE)

### 4xx Client Errors
400 - Bad Request - wrong format or missing fields
401 - Unauthorized - not logged in
403 - Forbidden - logged in but no permission
404 - Not Found - resource does not exist
422 - Unprocessable - validation failed

### 5xx Server Errors
500 - Internal Server Error - server crashed
502 - Bad Gateway - invalid response from upstream
503 - Service Unavailable - server is down

## 401 vs 403
401 = not logged in at all
403 = logged in but not allowed

## 400 vs 422
400 = request format is wrong
422 = format is correct but values fail validation


## JSON Basics

JSON = JavaScript Object Notation. Language APIs use to send data.

Two building blocks:
- Objects = { } curly braces
- Arrays  = [ ] square brackets

Data types:
- String  = "Rahul"    always double quotes
- Number  = 28         no quotes
- Boolean = true/false no quotes, lowercase
- Null    = null       no quotes, lowercase
- Array   = [1,2,3]
- Object  = {"key": "value"}

## Reading nested JSON
response.data[0].first_name
- response = the full object
- data = key inside response
- [0] = first item in the array
- first_name = key inside that item

## Common mistakes
- Never use single quotes in JSON
- Never put comma after the last item