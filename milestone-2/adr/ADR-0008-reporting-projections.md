# ADR-0008: Separate Reporting Reads from Domain Writes

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Reporting shall use read models, views, or projections rather than mutating domain aggregates.

## Rationale

Operational reporting queries differ from transactional writes.

## Consequences

Some reporting data may be eventually consistent if projections are introduced later.
