# Platform Architecture Overview

## Document Control

| Field | Value |
|---|---|
| Document ID | SAD-001 |
| Version | 0.3.0 |
| Status | Draft baseline |
| Owner | Luhle Hesman |
| Branch target | develop |
| Last updated | 2026-08-05 |

## 1. Purpose

This document defines the high-level architecture for the Premium Clothing E-Commerce Platform.

The architecture is intended to support Phases 1–3 while preserving a credible path toward future scale, additional integrations, advanced merchandising, native applications, and AI-assisted capabilities.

## 2. Architecture Style

The initial solution shall use a modular monolith.

The backend will be a single deployable Spring Boot application with explicit internal domain boundaries. The frontend will be a single Angular application with lazy-loaded feature areas and a shared design system.

## 3. Architectural Drivers

- Mobile-first customer experience
- Payment integrity
- Inventory consistency
- Secure handling of personal information
- Operational simplicity
- Low initial cloud cost
- Maintainability for a small team
- High documentation quality
- AI-assisted implementation
- Future extensibility

## 4. Core Technology Direction

| Layer | Technology |
|---|---|
| Storefront and admin UI | Angular 20+, TypeScript, RxJS, Signals |
| Backend | Java 21+, Spring Boot 3.x |
| Database | PostgreSQL |
| Cache | Redis |
| Object storage | Azure Blob Storage |
| CDN and edge | Azure Front Door or CDN |
| Hosting | Azure App Service or Container Apps |
| Secrets | Azure Key Vault |
| Monitoring | Azure Monitor and Application Insights |
| API documentation | OpenAPI 3.1 |
| Diagrams | Mermaid |
| CI/CD | GitHub Actions or GitLab CI |

## 5. Architecture Principles

### AP-001 — Modular by Domain

Code shall be organised by business capability rather than only by technical layer.

### AP-002 — API First

Public and internal integration contracts shall be designed before implementation.

### AP-003 — Secure by Default

Authentication, authorisation, validation, secrets management, and auditability shall be built into the platform foundation.

### AP-004 — Transactional Integrity

Payment, order, and inventory workflows shall use explicit transaction and idempotency boundaries.

### AP-005 — Mobile First

Customer-facing UI decisions shall be optimised for mobile before desktop enhancement.

### AP-006 — Observable by Design

Important operations shall emit logs, metrics, traces, and auditable business events.

### AP-007 — Managed Services First

Use managed cloud services where they materially reduce operational burden and remain cost-effective.

### AP-008 — No Sensitive Payment Storage

The platform shall not store raw card details or equivalent high-risk payment credentials.

### AP-009 — Explicit Trade-offs

Material architecture choices shall be recorded in ADRs.

### AP-010 — Documentation as Source

Markdown, Mermaid, OpenAPI, SQL, and ADR files in Git are authoritative.

## 6. Logical Modules

- Identity and Access
- Customer Accounts
- Catalogue
- Pricing and Promotions
- Inventory
- Cart
- Checkout
- Payments
- Orders
- Shipping
- Notifications
- Content Management
- Administration
- Reporting
- Shared Platform Services

## 7. Deployment Model

The initial deployment will contain:

- Angular static frontend
- Spring Boot API
- PostgreSQL database
- Redis cache
- Blob storage
- Key Vault
- Monitoring and alerts
- External payment and courier providers

## 8. Non-Goals

The architecture does not initially optimise for:

- Independent microservice deployment
- Multi-region active-active
- Multi-tenant SaaS
- Event-sourced persistence
- Global multi-currency commerce
- Complex warehouse orchestration
