# Documentation Standards

## 1. Purpose

This standard defines how project documentation must be authored, structured, reviewed, versioned, and maintained.

## 2. Source of Truth

Markdown, Mermaid, OpenAPI YAML, SQL, and ADR files in Git are the source of truth.

Generated Word and PDF files are release artifacts and must not be edited directly.

## 3. Requirement Language

Requirements must be:

- Necessary
- Singular
- Unambiguous
- Feasible
- Verifiable
- Traceable
- Implementation-neutral unless the requirement is explicitly technical

Avoid weak terms such as:

- should
- may
- user-friendly
- fast
- secure
- appropriate
- easy

Use measurable criteria instead.

## 4. EARS Patterns

### Ubiquitous

> The system shall display product prices in South African Rand.

### Event-driven

> When the customer adds an available product variant to the cart, the system shall add the selected variant and quantity to the active cart.

### State-driven

> While a product variant has no available stock, the system shall prevent the customer from adding that variant to the cart.

### Unwanted behaviour

> If payment confirmation cannot be validated, the system shall retain the order in a pending-payment state and shall not deduct final stock.

### Optional feature

> Where guest checkout is enabled, the system shall allow a customer to complete checkout without creating a password.

### Complex

> While an order is awaiting payment, when a valid success webhook is received, the system shall mark the payment as successful, create or confirm the order, and publish an order-confirmed event.

## 5. Acceptance Criteria

Acceptance criteria use Given/When/Then.

```gherkin
Given a product variant has 3 units available
And the customer has selected quantity 2
When the customer adds the variant to the cart
Then the cart shall contain quantity 2
And the remaining available stock shall not be permanently deducted until the configured reservation point
```

## 6. Diagrams

Use Mermaid for diagrams that GitHub can render.

Preferred diagram types:

- C4-style context and container diagrams
- Sequence diagrams
- State diagrams
- Flowcharts
- Entity relationship diagrams

Every diagram must include:

- Title
- Scope
- Actors or systems
- Assumptions
- Link to related requirements

## 7. API Documentation

OpenAPI 3.1 is authoritative for REST contracts.

Markdown API documentation explains:

- Business purpose
- Authorization
- Rules
- Error behaviour
- Idempotency
- Sequence
- Examples

## 8. Versioning

Documentation releases use Semantic Versioning:

- MAJOR: substantial scope or architecture reset
- MINOR: completed milestone or major feature documentation
- PATCH: corrections and clarifications

## 9. Review Checklist

- Requirement IDs are unique.
- Links are valid.
- Terms match the glossary.
- Assumptions are explicit.
- Security and privacy are addressed.
- Error and empty states are documented.
- Testability is demonstrated.
- Dependencies are identified.
- Open decisions have owners.
