# ADR-0005: Model Inventory Reservations Explicitly

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Use explicit inventory reservations rather than only decrementing a quantity field.

## Rationale

Checkout and payment are asynchronous and stock must not be oversold.

## Consequences

Reservation expiry, release, finalisation, and reconciliation require dedicated logic.
