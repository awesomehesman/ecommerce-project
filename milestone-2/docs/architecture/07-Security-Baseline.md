# Security Baseline

## 1. Security Objectives

- Protect customer identities and personal information
- Protect administrative functions
- Prevent payment-state forgery
- Prevent common web attacks
- Preserve auditability
- Minimise secret exposure
- Support incident investigation

## 2. Authentication

- Strong password hashing using Argon2id or BCrypt
- Time-limited access tokens
- Rotating or revocable refresh-token/session strategy
- Password reset tokens must be single-use and expiring
- Email verification may be enabled based on business decision
- MFA-ready architecture for administrators

## 3. Authorization

- Role-based and permission-based controls
- Server-side enforcement
- Least privilege
- Separate customer and admin privileges
- Sensitive actions require explicit permissions

## 4. Roles

Initial proposal:

- CUSTOMER
- SUPPORT_AGENT
- CATALOGUE_MANAGER
- FULFILMENT_AGENT
- FINANCE_AGENT
- ADMINISTRATOR
- OWNER

## 5. Web Security

- HTTPS only
- Secure headers
- CSRF protection according to token/session model
- CORS allow-list
- Content Security Policy
- Input validation
- Output encoding
- Safe file-upload validation
- Rate limiting
- Brute-force controls

## 6. Secrets

- Azure Key Vault
- Managed identity where possible
- No secrets in Git
- No secrets in frontend
- Rotation process
- Restricted access

## 7. Payment Security

- Hosted or tokenised payment flow
- Validate provider signature and source
- Do not trust customer redirect as proof
- Idempotent callbacks
- Reconciliation
- Audit refunds

## 8. Data Protection

- Encryption in transit
- Managed encryption at rest
- Minimise personal information
- Restrict administrative display
- Mask sensitive logs
- Define retention
- Support data-subject requests where applicable

## 9. Logging

Never log:

- Passwords
- Full tokens
- Raw card data
- Sensitive authentication secrets
- Unnecessary personal information

## 10. Security Testing

- Dependency scanning
- SAST
- Secret scanning
- DAST before launch
- Authorization tests
- File upload tests
- Rate-limit tests
- Payment callback forgery tests
- OWASP Top 10 review
