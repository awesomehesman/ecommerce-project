# Quality Attribute Scenarios

## Purpose

Quality Attribute Scenarios define measurable architecture expectations and prevent vague statements such as “the platform must be fast” or “the system must be scalable”.

## Performance

### QAS-PERF-001 — Product Listing

**Source:** Customer  
**Stimulus:** Requests a product listing with standard filters  
**Environment:** Normal production load  
**Artifact:** Catalogue API  
**Response:** Returns the first page and filter metadata  
**Measure:** p95 server response time below 700 ms, excluding network latency

### QAS-PERF-002 — Product Detail

Under normal load, a product detail response should complete within 500 ms p95, excluding image transfer.

### QAS-PERF-003 — Checkout Review

When a customer reviews checkout, server-side validation of stock, price, promotion, and delivery should complete within 1.5 seconds p95, excluding third-party response time.

### QAS-PERF-004 — Peak Campaign Traffic

Under a burst of 500 concurrent browsing users, the system shall continue serving catalogue traffic without data corruption or unbounded error growth.

## Availability and Resilience

### QAS-AVAIL-001 — Payment Provider Unavailable

When the payment provider is temporarily unavailable, the system shall preserve the cart and checkout context, avoid creating a false paid order, and allow a safe retry.

### QAS-AVAIL-002 — Delayed Payment Webhook

When a customer returns from the payment provider before the webhook arrives, the order shall remain pending and become confirmed once a valid webhook is processed.

### QAS-AVAIL-003 — Duplicate Webhook

When the same valid payment callback is received multiple times, the system shall produce one payment result and one order effect.

### QAS-AVAIL-004 — Notification Failure

If transactional email delivery fails, the order shall remain valid and the notification shall be retryable without duplicating the order.

## Security

### QAS-SEC-001 — Brute Force Protection

After repeated failed authentication attempts, the platform shall throttle or temporarily block further attempts according to configured policy.

### QAS-SEC-002 — Administrative Access

An authenticated customer who attempts an admin operation shall receive an authorisation failure and no protected data.

### QAS-SEC-003 — Secret Exposure

Application secrets shall not appear in source control, logs, client-side bundles, or API responses.

### QAS-SEC-004 — Payment Callback Validation

A forged or invalid payment callback shall not change payment or order state.

## Scalability

### QAS-SCALE-001 — Stateless API Scaling

The Spring Boot application shall support horizontal scaling without requiring local session state.

### QAS-SCALE-002 — Media Growth

Increasing product-image volume shall not materially increase relational database size because media is stored in object storage.

### QAS-SCALE-003 — Search Evolution

The catalogue design shall support later introduction of a dedicated search engine without changing customer-facing routes.

## Maintainability

### QAS-MAINT-001 — New Payment Provider

A new payment provider should be introducible behind a payment-provider interface without requiring changes to core order-domain logic.

### QAS-MAINT-002 — New Delivery Provider

A new delivery integration should be addable without redesigning the checkout UI.

### QAS-MAINT-003 — Domain Isolation

Changes in notification implementation shall not require changes to product or inventory domain logic.

### QAS-MAINT-004 — Feature Documentation

A developer shall be able to identify related requirements, APIs, database impact, UI states, and tests from one feature specification.

## Usability and Accessibility

### QAS-UX-001 — Mobile Checkout

A customer using a current mobile browser shall be able to complete checkout without horizontal scrolling.

### QAS-UX-002 — Keyboard Operation

Core storefront and admin interactions shall be operable by keyboard.

### QAS-UX-003 — Form Errors

Validation errors shall identify the affected field and provide actionable guidance.

## Recoverability

### QAS-REC-001 — Database Backup

A database backup shall be restorable in a non-production environment through a documented procedure.

### QAS-REC-002 — Failed Deployment

A failed deployment shall be reversible to the last known stable release.

## Observability

### QAS-OBS-001 — Order Failure

A critical failure during order confirmation shall create a traceable error with correlation ID and alerting context.

### QAS-OBS-002 — Business Audit

Sensitive administrative changes shall record actor, timestamp, action, and affected record.
