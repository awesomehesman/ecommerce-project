# Contributing Guide

## Purpose

This guide defines how documentation, diagrams, specifications, and later implementation code are added to the project.

## Branching Model

- `main`: stable, approved milestones only
- `develop`: integrated working baseline
- short-lived branches: one focused scope per branch

Examples:

```text
docs/project-charter
docs/authentication
docs/catalogue
docs/checkout
architecture/security-baseline
```

## Commit Convention

Use Conventional Commits:

```text
docs(charter): define project objectives and success metrics
docs(api): add product catalogue endpoints
docs(db): define product variant schema
docs(ui): add product details wireframes
chore(repo): update documentation tooling
```

## Pull Request Requirements

Every pull request must:

1. Describe the business or technical purpose.
2. List documents or diagrams changed.
3. Identify new or changed requirement IDs.
4. Confirm internal links and Mermaid diagrams render.
5. Confirm assumptions and unresolved decisions are documented.
6. Update the changelog when the change affects a milestone.

## Documentation Quality Bar

Documentation must be:

- Specific enough to implement
- Testable
- Internally consistent
- Free from unexplained terminology
- Traceable to requirements
- Explicit about assumptions
- Explicit about out-of-scope items
- Written in clear professional English

## Definition of Done for a Feature Specification

A feature is documentation-complete only when it includes:

- Business objective
- Scope and exclusions
- Personas and user stories
- EARS requirements
- Business rules
- Acceptance criteria
- UI states and responsive behaviour
- API contracts
- Database impact
- Security and privacy considerations
- Error handling and edge cases
- Sequence or activity diagram
- Test cases
- Traceability links
- Open decisions
