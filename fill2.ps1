# fill2.ps1 - Part 2 (Sentiment, Cover Letter, Question Bank)

$files = @{}

$files["projects\complaint-sentiment-analyzer\prompt.md"] = @'
# Customer Complaint Sentiment Analyzer — Prompt

## ROLE
Analyze a customer complaint for sentiment and urgency.

## RULES
1. Use only the message text.
2. Keep it short and usable.
3. Use basic English.

## INPUT
COMPLAINT_TEXT

## OUTPUT FORMAT
### Sentiment
(Angry / Frustrated / Neutral / Satisfied)

### Urgency
(High / Medium / Low)

### Main Issue (1 line)

### Key Reasons (2–4 bullets)

### Suggested Support Reply (4–6 lines)
(simple, polite)
'@

$files["projects\complaint-sentiment-analyzer\testcases.md"] = @'
# Test Cases — Complaint Sentiment Analyzer

## Test Case 1
COMPLAINT_TEXT:
I ordered 10 days ago and still nothing arrived. Your support is not replying. This is really frustrating. I want my refund now.

## Test Case 2
COMPLAINT_TEXT:
Thanks, the product works fine. Just one small issue: the manual is confusing. Please share a quick guide.
'@

$files["projects\complaint-sentiment-analyzer\outputs.md"] = @'
# Example Outputs — Complaint Sentiment Analyzer

## Output for Test Case 1
### Sentiment
Frustrated
### Urgency
High
### Main Issue (1 line)
Order delayed and support not replying; refund requested.
### Key Reasons
- 10 days delay
- No support response
- Refund demand
### Suggested Support Reply
Hi, sorry for the delay and the support issue.  
Please share your order ID so we can check immediately.  
If you prefer a refund, we will start it right away.  
We will update you within a few hours.

## Output for Test Case 2
### Sentiment
Satisfied
### Urgency
Low
### Main Issue (1 line)
Manual is confusing; needs a simple guide.
### Key Reasons
- Product works fine
- Only documentation issue
### Suggested Support Reply
Hi, thanks for the feedback.  
We will share a quick step-by-step guide.  
If you tell us which part is confusing, we can explain it better.
'@

$files["projects\cover-letter-generator\prompt.md"] = @'
# AI-Supported Cover Letter Generator — Prompt

## ROLE
Write a cover letter using a resume + job description.

## RULES
1. Do not invent experience.
2. Use simple English.
3. Keep 220–320 words.
4. Make it role-specific.
5. Add 3 match highlights.

## INPUT
JOB_DESCRIPTION:
RESUME:

## OUTPUT
### Cover Letter
(text)

### Match Highlights (3 bullets)
- ...
- ...
- ...
'@

$files["projects\cover-letter-generator\testcases.md"] = @'
# Test Case — Cover Letter Generator

JOB_DESCRIPTION:
Looking for a Java Backend Intern. Skills: Java, Spring Boot, REST APIs, SQL, Git. Good communication.

RESUME:
CSE student. Skills: Java, Spring Boot, REST API, MySQL, Git. Built a Tracking-Number API project using Spring Boot and MySQL. Uses GitHub for version control.
'@

$files["projects\cover-letter-generator\outputs.md"] = @'
# Example Output — Cover Letter Generator

### Cover Letter
Dear Hiring Manager,

I am applying for the Java Backend Intern role. I am a CSE student with hands-on practice in Java and Spring Boot, and I enjoy building clean REST APIs.

In my project “Tracking-Number API,” I built backend endpoints using Spring Boot and connected them with a MySQL database. I used GitHub for version control and focused on writing clear and structured code. This helped me understand how backend systems handle requests, store data, and return responses.

I am comfortable with Java basics, REST API design, SQL queries, and using Git in a team workflow. I also learn fast and communicate clearly when I need help or when I complete a task.

Thank you for your time and consideration.

Sincerely,  
Kasyap Yanamandra

### Match Highlights (3 bullets)
- Java + Spring Boot + REST API practice
- SQL (MySQL) integration
- Git/GitHub version control
'@

$files["projects\interview-question-bank-generator\prompt.md"] = @'
# Interview Readiness Question Bank Generator — Prompt

## ROLE
Generate role-based interview questions.

## RULES
1. Match the ROLE and MAIN_SKILLS.
2. Mix technical + behavioral + situational.
3. Add a 1-line hint for each question.
4. Use basic English.

## INPUT
ROLE:
SKILL_LEVEL:
MAIN_SKILLS:
PROJECTS (optional):
JOB_TYPE:

## OUTPUT FORMAT
### A) Fundamentals (8)
### B) Role-Specific Technical (10)
### C) Project/Resume (6)
### D) Behavioral (6)
### E) Situational (6)
'@

$files["projects\interview-question-bank-generator\testcases.md"] = @'
# Test Case — Interview Question Bank Generator

ROLE: Java Backend Intern
SKILL_LEVEL: Beginner
MAIN_SKILLS: Java, Spring Boot, REST API, SQL, Git
PROJECTS: Tracking-Number API (Spring Boot + MySQL)
JOB_TYPE: Intern
'@

$files["projects\interview-question-bank-generator\outputs.md"] = @'
# Example Output — Interview Question Bank Generator

### A) Fundamentals (8)
1) What is OOP in Java?  
Hint: Class, object, inheritance, polymorphism.
2) What is exception handling?  
Hint: try/catch and why it helps.
3) What is JVM vs JRE vs JDK?  
Hint: Basic difference.
4) What is a List vs Set vs Map?  
Hint: When to use each.
5) What is immutability?  
Hint: Why it is safe.
6) What is a thread?  
Hint: Basic parallel work idea.
7) What is an interface?  
Hint: Contract for methods.
8) What is overloading vs overriding?  
Hint: Same name vs same signature.

### B) Role-Specific Technical (10)
1) What is Spring Boot and why use it?  
Hint: Faster setup, auto config.
2) What is REST API in simple words?  
Hint: Resources + HTTP.
3) GET vs POST?  
Hint: Read vs create.
4) What are status codes?  
Hint: 200/400/404/500 examples.
5) What is JSON?  
Hint: Key-value data format.
6) How to connect Spring Boot to MySQL?  
Hint: properties + driver.
7) What is CRUD?  
Hint: Create/Read/Update/Delete.
8) What is a primary key?  
Hint: Unique row id.
9) What is Git commit?  
Hint: Save changes.
10) What is Git push?  
Hint: Upload to remote.

### C) Project/Resume (6)
1) Explain your project flow end-to-end.  
Hint: Input → logic → DB → response.
2) What tables did you design and why?  
Hint: Data model.
3) What was the biggest bug you fixed?  
Hint: Problem solving proof.
4) How did you test your APIs?  
Hint: Postman / basic checks.
5) How do you handle invalid inputs?  
Hint: Validation + error response.
6) If users grow, what will you improve?  
Hint: Performance basics.

### D) Behavioral (6)
1) Tell me about yourself.  
Hint: Role-focused summary.
2) Why this internship?  
Hint: Learning + contribution.
3) How do you handle deadlines?  
Hint: Plan + updates.
4) How do you learn fast?  
Hint: Steps + example.
5) How do you take feedback?  
Hint: Improve quickly.
6) Team experience?  
Hint: Communication.

### E) Situational (6)
1) API returns 500. What first?  
Hint: Logs + reproduce.
2) You are stuck. What do you do?  
Hint: Ask early.
3) Teammate broke your code. Response?  
Hint: Calm + fix together.
4) Task is unclear. What questions?  
Hint: Requirements clarity.
5) SQL is slow. What try?  
Hint: Index + query check.
6) Add new field to API. What changes?  
Hint: DB + service + controller.
'@

foreach ($path in $files.Keys) {
  $dir = Split-Path $path -Parent
  if ($dir -and !(Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
  Set-Content -Path $path -Value $files[$path] -Encoding UTF8
}

Write-Host "Part 2 done." -ForegroundColor Green
