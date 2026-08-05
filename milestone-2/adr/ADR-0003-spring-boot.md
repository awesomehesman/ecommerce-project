# ADR-0003: Use Java and Spring Boot for the Backend

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Use Java 21+ and Spring Boot 3.x.

## Rationale

- Team capability
- Mature security and persistence ecosystem
- Strong transaction support
- Good integration and testing tooling

## Consequences

The project shall use explicit module boundaries and avoid exposing JPA entities directly.
