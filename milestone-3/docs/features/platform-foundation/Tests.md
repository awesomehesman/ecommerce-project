# Phase 1 Test Catalogue

## Authentication

- TC-AUTH-001 Register valid customer
- TC-AUTH-002 Reject duplicate normalised email
- TC-AUTH-003 Reject weak password
- TC-AUTH-004 Login with valid credentials
- TC-AUTH-005 Return generic invalid credential response
- TC-AUTH-006 Apply throttle after repeated failures
- TC-AUTH-007 Refresh valid session
- TC-AUTH-008 Reject revoked refresh session
- TC-AUTH-009 Reset password with valid token
- TC-AUTH-010 Reject reused reset token
- TC-AUTH-011 Verify customer cannot access admin API

## Customer Account

- TC-ACCT-001 Read own profile
- TC-ACCT-002 Update permitted fields
- TC-ACCT-003 Create address
- TC-ACCT-004 Prevent cross-customer address access
- TC-ACCT-005 Maintain one default address

## Catalogue Admin

- TC-ADMIN-001 Create draft product
- TC-ADMIN-002 Prevent unauthorised product creation
- TC-ADMIN-003 Reject duplicate SKU
- TC-ADMIN-004 Prevent invalid publication
- TC-ADMIN-005 Publish valid product
- TC-ADMIN-006 Archive published product
- TC-ADMIN-007 Reject unsafe file upload
- TC-ADMIN-008 Audit price and stock changes

## Platform

- TC-PLAT-001 Correlation ID returned on error
- TC-PLAT-002 Sensitive fields absent from logs
- TC-PLAT-003 Validation uses standard problem format
- TC-PLAT-004 Health endpoint reflects required dependencies
