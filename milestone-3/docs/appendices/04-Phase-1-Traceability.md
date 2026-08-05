# Phase 1 Traceability Matrix

| Requirement | API | Database | UI | Test Area |
|---|---|---|---|---|
| FR-AUTH-001 | POST /auth/register | app_users, user_roles | Register screen | Registration E2E |
| FR-AUTH-002 | POST /auth/login | app_users, refresh_sessions | Login screen | Login API/E2E |
| FR-AUTH-005 | POST /auth/forgot-password | password_reset_tokens | Forgot password | Reset integration |
| FR-ACCT-003 | POST /customers/me/addresses | customer_addresses | Address form | Ownership tests |
| UI-SHELL-001 | N/A | N/A | Responsive header | Accessibility/E2E |
| FR-ADMIN-PROD-001 | POST /admin/products | products | Product editor | Admin API/E2E |
| FR-ADMIN-PROD-003 | POST variants | product_variants | Variant editor | Unique SKU test |
| FR-PLAT-ERR-001 | All | N/A | Error state | Error contract tests |
