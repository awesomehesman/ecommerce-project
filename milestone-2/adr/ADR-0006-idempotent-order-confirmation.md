# ADR-0006: Make Payment and Order Confirmation Idempotent

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Payment callbacks and order confirmation shall use idempotency controls.

## Rationale

Providers retry callbacks and customers may repeat requests.

## Consequences

Unique provider references and idempotency keys must be persisted and constrained.
