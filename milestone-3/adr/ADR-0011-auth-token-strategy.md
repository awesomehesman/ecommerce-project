# ADR-0011: Use Short-Lived Access Tokens with Revocable Refresh Sessions

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Use short-lived bearer access tokens and server-tracked revocable refresh sessions.

Prefer an HttpOnly, Secure, SameSite cookie for refresh credentials where deployment architecture supports it.

## Rationale

This balances stateless API scaling with revocation capability.

## Consequences

- Refresh-session persistence is required.
- Token rotation and reuse detection should be considered.
- Browser storage of long-lived refresh tokens is prohibited.
