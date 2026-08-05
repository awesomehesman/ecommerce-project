# ADR-0001: Use a Modular Monolith for the Initial Platform

- **Status:** Proposed
- **Date:** 2026-08-05
- **Decision owners:** Product owner and technical lead

## Context

The platform requires multiple domains, including authentication, catalogue, cart, checkout, payment, inventory, and orders. The initial team and operating budget are expected to be limited.

## Decision

Build the backend as a modular monolith using Java and Spring Boot.

Each domain will have explicit boundaries, interfaces, data ownership, and tests. Cross-module dependencies must follow documented rules.

## Consequences

### Positive

- Simpler deployment
- Lower hosting cost
- Easier local development
- Easier transactional consistency
- Faster initial delivery
- Lower observability overhead

### Negative

- Requires discipline to prevent coupling
- Independent deployment is not available
- Scaling is initially application-wide
- Future extraction may require migration effort

## Alternatives Considered

### Microservices

Rejected for the first release because operational cost and distributed-system complexity would outweigh expected benefits.

### Serverless Functions

Not selected as the primary architecture because core order and inventory workflows benefit from clear transactional boundaries and a cohesive application model.

## Revisit Criteria

Revisit when:

- One domain requires materially different scaling
- Team ownership becomes domain-specific
- Deployment frequency is blocked by the monolith
- Regulatory or reliability isolation is required
