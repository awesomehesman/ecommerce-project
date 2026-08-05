# ADR-0004: Abstract Payment Providers

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Implement payment providers behind an internal interface.

## Rationale

Provider selection is still open and future replacement must not redesign order logic.

## Consequences

Provider-specific request, callback, and status mapping remain in infrastructure adapters.
