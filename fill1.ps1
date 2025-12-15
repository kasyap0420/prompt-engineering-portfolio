# fill1.ps1 - Part 1 (Research, Contract, Tone, Interview Evaluator, ToS/Privacy)

$files = @{}

$files["projects\research-simplifier\prompt.md"] = @'
# Scientific Research Paper Simplifier — Prompt

## ROLE
You are a Scientific Paper Simplifier for school-level readers.

## GOAL
Rewrite research text into very simple, ordinary English that a Class 8–10 student can understand.

## RULES
1. Use ONLY information given in the text. Do not add new facts.
2. Explain hard words in brackets. Example: "neurons (brain cells)".
3. Keep sentences short. Avoid heavy jargon.
4. If something is not clear, say: "Not clearly explained in the text".
5. Do not change meaning.

## INPUT
PAPER_TEXT

## OUTPUT FORMAT (follow exactly)

### 1) One-Line Summary
(1 simple sentence)

### 2) Simple Summary (5–8 lines)
5–8 short lines in plain English.

### 3) Key Terms Explained
| Term | Simple Meaning |
(5–12 terms)

### 4) What Problem Is It Solving?
2–4 lines.

### 5) What Did They Do? (Method)
4–8 bullet points.

### 6) What Did They Find? (Results)
3–6 bullet points.

### 7) Why Does It Matter? (Real-World Use)
3–6 bullet points.

### 8) Limits / What They Did NOT Prove
2–5 bullet points (only what the text supports).

### 9) If I Am a Student, What Should I Remember? (5 bullets)
5 short bullets.

Now wait for PAPER_TEXT.
'@

$files["projects\research-simplifier\testcases.md"] = @'
# Test Cases — Research Paper Simplifier

## Test Case 1
### PAPER_TEXT
Recent studies explore using deep learning to detect pneumonia from chest X-ray images. In this work, we trained a convolutional neural network (CNN) using a dataset of labeled X-rays. The model was optimized with cross-entropy loss and evaluated using accuracy, precision, recall, and F1-score. Results show the proposed model achieved higher recall compared to baseline methods. However, performance varied across hospitals due to differences in imaging devices and patient populations.

## Test Case 2
### PAPER_TEXT
We present a low-cost sensor network for monitoring air quality in urban areas. Sensors measured particulate matter (PM2.5), temperature, and humidity at 5-minute intervals. Data were transmitted via a gateway to a central server and cleaned to remove outliers. We observed that PM2.5 levels were highest during peak traffic hours and decreased after rainfall events. Limitations include sensor drift over time and missing data due to connectivity loss.
'@

$files["projects\research-simplifier\outputs.md"] = @'
# Example Outputs — Research Paper Simplifier

## Output for Test Case 1

### 1) One-Line Summary
They used an AI model to find pneumonia in chest X-ray images.

### 2) Simple Summary (5–8 lines)
- The study tries to detect pneumonia using chest X-ray pictures.
- They trained an AI model called a CNN.
- The model learned from labeled X-rays (pneumonia / not pneumonia).
- They tested it using accuracy, precision, recall, and F1-score.
- The model caught more pneumonia cases than baseline methods.
- Results changed between hospitals because machines and patients were different.

### 3) Key Terms Explained
| Term | Simple Meaning |
|---|---|
| Deep learning | AI that learns from data |
| Pneumonia | A lung infection |
| Chest X-ray | A chest picture used by doctors |
| CNN | AI model for images |
| Labeled data | Data with correct answers |
| Recall | How many real cases it catches |

### 4) What Problem Is It Solving?
It tries to help detect pneumonia faster and more consistently from X-rays.

### 5) What Did They Do? (Method)
- Used labeled X-ray data.
- Trained a CNN model.
- Evaluated using standard scores.

### 6) What Did They Find? (Results)
- Higher recall than baseline methods.
- Performance varied across hospitals.

### 7) Why Does It Matter? (Real-World Use)
- Can support doctors as a second check.
- Can reduce missed pneumonia cases.

### 8) Limits / What They Did NOT Prove
- Not proven to work the same in every hospital.
- Real hospital deployment is not shown.

### 9) If I Am a Student, What Should I Remember? (5 bullets)
- CNNs are used for images.
- Recall matters when you must not miss cases.
- Different hospitals can give different results.
- AI needs testing in many places.
- Do not assume it works everywhere.
'@

$files["projects\contract-risk-checker-india\prompt.md"] = @'
# Legal Contract Compliance Checker (Indian Law) — Prompt

## ROLE
You are a Contract Risk Checker for India-focused agreements.

## IMPORTANT
This is NOT legal advice. This is a risk review for learning and early screening only.

## GOAL
Read contract text and highlight risky clauses in simple English.

## RULES
1. Use only the given contract text. Do not assume missing details.
2. If a clause is unclear, say: "Not clear in the clause".
3. Keep language basic and direct.
4. Give safer rewrite suggestions in plain English.
5. Mention India context only in general terms (example: "Indian Contract Act principles"). Do not invent case names.

## INPUT
CONTRACT_TEXT

## OUTPUT FORMAT (exact)

### 1) Quick Risk Summary
- Overall Risk: (Low / Medium / High)
- Top 3 Risk Areas: (bullets)

### 2) Clause-by-Clause Risk Table
| Clause / Topic | Risk Level (Low/Med/High) | Why It Is Risky (simple) | Safer Rewrite Suggestion (simple) |

### 3) Red Flags (Most Dangerous)
Bullets (max 8)

### 4) Missing Protections (What to Add)
Bullets (max 8)

### 5) Questions to Ask Before Signing
Bullets (max 8)

Now wait for CONTRACT_TEXT.
'@

$files["projects\contract-risk-checker-india\testcases.md"] = @'
# Test Cases — Contract Risk Checker (India)

## Test Case 1
### CONTRACT_TEXT
1. Limitation of Liability: The Service Provider will not be liable for any damages of any kind, including indirect or direct losses, even if informed.
2. Indemnity: The Customer will indemnify and hold harmless the Service Provider for any claims, losses, and expenses arising from use of the service.
3. Termination: The Service Provider may terminate this agreement at any time without notice. The Customer cannot terminate before 12 months.
4. Payment: Payment is due within 7 days. Late payment will be charged 5% per day.
5. Governing Law: Governing law is the law of another country. All disputes will be handled only in that country.
6. Data: The Service Provider may collect and share user data with partners for business purposes.
'@

$files["projects\contract-risk-checker-india\outputs.md"] = @'
# Example Outputs — Contract Risk Checker (India)

### 1) Quick Risk Summary
- Overall Risk: High
- Top 3 Risk Areas:
  - One-sided termination
  - Very wide indemnity
  - Very harsh liability/payment terms

### 2) Clause-by-Clause Risk Table
| Clause / Topic | Risk Level (Low/Med/High) | Why It Is Risky (simple) | Safer Rewrite Suggestion (simple) |
|---|---|---|---|
| Limitation of Liability | High | Provider avoids almost all responsibility | Add a reasonable liability cap and keep liability for major faults |
| Indemnity | High | Customer covers “any” claims and costs | Limit indemnity to customer’s breach/illegal use + add notice/defense rules |
| Termination | High | Provider can end anytime; customer locked | Make termination fair for both sides with notice (ex: 30 days) |
| Late fee | High | 5% per day is extremely high | Use a reasonable monthly interest and a grace period |
| Governing law | Med/High | Disputes forced abroad | Prefer India jurisdiction or mutual option |
| Data sharing | High | Broad sharing without clear limits | Limit purpose, consent, retention, and sharing rules |

### 3) Red Flags (Most Dangerous)
- Provider can terminate without notice.
- Customer cannot terminate for 12 months.
- Indemnity is unlimited.
- Liability is heavily one-sided.
- Late fee is very high.
- Data sharing is too broad.

### 4) Missing Protections (What to Add)
- Confidentiality for both sides
- Data retention + deletion rules
- Dispute steps (notice + cure period)
- Service/support expectations
- Refund/exit terms

### 5) Questions to Ask Before Signing
- Can we cap liability and indemnity?
- Can termination be mutual with notice?
- Can late fee be reduced?
- Where will disputes be handled?
- What data is collected/shared exactly?
'@

$files["projects\emotional-tone-improver\prompt.md"] = @'
# AI Emotional Tone Improver — Prompt

## ROLE
Rewrite messages into a chosen tone while keeping the same meaning.

## GOAL
Rewrite the text in basic English to match TARGET_TONE:
Professional / Friendly / Empathetic / Assertive

## RULES
1. Keep facts, dates, names, and numbers unchanged.
2. Do not add new information.
3. Keep it clear and short.
4. Remove rude words if needed.
5. Output should be ready to send.

## INPUT
TARGET_TONE:
TEXT:

## OUTPUT FORMAT
### Rewritten Message
(ready to send)

### Small Notes (1–3 bullets)
What you changed and why.

### Optional Subject Lines (3)
Only if it is an email.
'@

$files["projects\emotional-tone-improver\testcases.md"] = @'
# Test Cases — Emotional Tone Improver

## Test Case 1
TARGET_TONE: Professional
TEXT:
Hi, you still did not send the files. This is the 3rd time I am asking. If you don’t send today, I will complain to the manager.

## Test Case 2
TARGET_TONE: Empathetic
TEXT:
Your work is full of mistakes. Fix it and send it again.
'@

$files["projects\emotional-tone-improver\outputs.md"] = @'
# Example Outputs — Emotional Tone Improver

## Output for Test Case 1

### Rewritten Message
Hi, I’m following up on the files that are still pending. This is my third request.  
Please share them by today so we can stay on schedule. If there is any issue, let me know.

### Small Notes (1–3 bullets)
- Removed threat words and kept it professional.
- Kept urgency but made it respectful.

### Optional Subject Lines (3)
- Follow-up: Pending files
- Request: Files needed today
- Reminder: Please share the files

## Output for Test Case 2

### Rewritten Message
I noticed some issues in the work. No problem—please review it, fix the mistakes, and resend it.

### Small Notes (1–3 bullets)
- Replaced harsh wording with supportive wording.
- Kept the same request (fix and resend).
'@

$files["projects\interview-answer-evaluator\prompt.md"] = @'
# Interview Answer Evaluator & Improver — Prompt

## ROLE
Evaluate an interview answer and improve it.

## RULES
1. Be honest and clear.
2. Do not invent experience not present in the answer.
3. Use basic English.
4. Give a strong but realistic improved answer.

## INPUT
QUESTION:
ANSWER:

## OUTPUT FORMAT
### Score (0–10)
- Relevance:
- Completeness:
- Confidence:
- Technical Correctness:

### What’s Good (2–5 bullets)

### What’s Missing / Wrong (2–6 bullets)

### Improved Answer (ready to speak)
(6–12 lines)

### Extra Tips (3 bullets)
'@

$files["projects\interview-answer-evaluator\testcases.md"] = @'
# Test Cases — Interview Answer Evaluator

## Test Case 1
QUESTION:
What are Java Streams and why are they useful?

ANSWER:
Streams are used to loop data. It makes code short. We can do filter and map. That is all.

## Test Case 2
QUESTION:
Explain REST API in simple words.

ANSWER:
REST is an API. It uses JSON. It has GET POST.
'@

$files["projects\interview-answer-evaluator\outputs.md"] = @'
# Example Outputs — Interview Answer Evaluator

## Output for Test Case 1

### Score (0–10)
- Relevance: 7
- Completeness: 4
- Confidence: 6
- Technical Correctness: 7

### What’s Good
- Mentions filter and map.
- Keeps it simple.

### What’s Missing / Wrong
- Does not explain stream as a pipeline.
- Missing lazy processing idea.
- No quick example.

### Improved Answer (ready to speak)
Java Streams are a way to process data like a pipeline.  
Instead of writing long loops, we can chain steps like filter, map, and collect.  
A stream works on a collection (like a List) but it does not store data itself.  
Streams can be lazy, so work happens only when needed.  
They are useful because code becomes shorter and easier to read.  
Example: filter even numbers, map to square, and collect results.

### Extra Tips
- Give one small example.
- Mention it works with collections.
- Explain benefit: clean + readable code.

## Output for Test Case 2

### Score (0–10)
- Relevance: 7
- Completeness: 5
- Confidence: 6
- Technical Correctness: 7

### What’s Good
- Mentions JSON and HTTP methods.
- Mentions GET and POST.

### What’s Missing / Wrong
- Missing “resource” and URL concept.

### Improved Answer (ready to speak)
A REST API is a way for two systems to talk over the internet using HTTP.  
It exposes resources (like users or orders) using URLs.  
We use GET to read, POST to create, PUT to update, and DELETE to remove.  
Data is often sent in JSON.  
It is popular because it is simple and standard for web apps.

### Extra Tips
- Give one endpoint example like /users.
- Map methods to actions.
- Keep it short and clear.
'@

$files["projects\tos-privacy-simplifier\prompt.md"] = @'
# Website Terms & Privacy Policy Simplifier — Prompt

## ROLE
Simplify Terms of Service and Privacy Policy text for normal users.

## RULES
1. Use only the given text.
2. Keep it clear and short.
3. Highlight user impact and risks.
4. If something is unclear, say "Not clearly stated".

## INPUT
POLICY_TEXT

## OUTPUT FORMAT
### 1) Simple Explanation (8–12 lines)
### 2) What Data They Collect (bullets)
### 3) What They Do With Data (bullets)
### 4) User Rights / Choices (bullets)
### 5) Red Flags (bullets)
### 6) Questions You Should Ask (bullets)
'@

$files["projects\tos-privacy-simplifier\testcases.md"] = @'
# Test Cases — ToS & Privacy Simplifier

POLICY_TEXT:
We may collect personal information such as your name, email, device identifiers, and location data. We may share information with our partners for analytics and marketing. We may update these terms at any time. Continued use means you accept the updated terms. We do not guarantee uninterrupted service and may suspend accounts for policy violations.
'@

$files["projects\tos-privacy-simplifier\outputs.md"] = @'
# Example Outputs — ToS & Privacy Simplifier

### 1) Simple Explanation (8–12 lines)
- They may collect your name, email, device details, and location.
- They may share data with partners for analytics and marketing.
- They can change terms anytime.
- If you keep using the site, they treat it as acceptance.
- They do not promise the service will always work.
- They can suspend accounts for policy issues.
- Some details are not clearly stated (like retention time).

### 2) What Data They Collect
- Name
- Email
- Device identifiers
- Location data

### 3) What They Do With Data
- Analytics
- Marketing
- Sharing with partners

### 4) User Rights / Choices
- Not clearly stated in the text.

### 5) Red Flags
- Broad partner sharing for marketing
- Terms can change anytime
- No service guarantee

### 6) Questions You Should Ask
- Can I opt out of marketing?
- How long is data stored?
- Can I delete my data/account?
- What causes account suspension?
'@

foreach ($path in $files.Keys) {
  $dir = Split-Path $path -Parent
  if ($dir -and !(Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
  Set-Content -Path $path -Value $files[$path] -Encoding UTF8
}

Write-Host "Part 1 done." -ForegroundColor Green

powershell -ExecutionPolicy Bypass -File .\fill1.ps1
