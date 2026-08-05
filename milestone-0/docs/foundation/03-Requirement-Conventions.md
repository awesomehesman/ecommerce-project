# Requirement Conventions

## Identifier Format

```text
<TYPE>-<DOMAIN>-<NUMBER>
```

Examples:

```text
FR-AUTH-001
FR-CART-012
NFR-PERF-004
SEC-PAY-003
API-ORDER-007
DB-INV-005
TC-CHECKOUT-021
```

## Domain Codes

| Code | Domain |
|---|---|
| GEN | General |
| AUTH | Authentication |
| ACCT | Customer accounts |
| HOME | Homepage |
| CAT | Catalogue |
| PROD | Products |
| SEARCH | Search |
| WISH | Wishlist |
| CART | Shopping cart |
| PROMO | Promotions |
| CHECKOUT | Checkout |
| PAY | Payments |
| SHIP | Shipping |
| ORDER | Orders |
| RETURN | Returns |
| ADMIN | Administration |
| INV | Inventory |
| NOTIFY | Notifications |
| REPORT | Reporting |
| CMS | Content management |

## Requirement Record

Every requirement must include:

| Field | Description |
|---|---|
| ID | Permanent unique identifier |
| Title | Concise description |
| Statement | EARS-formatted requirement |
| Rationale | Why the requirement exists |
| Priority | Must, Should, Could, Won't |
| Source | Business, legal, UX, architecture, security |
| Dependencies | Other requirement IDs or decisions |
| Verification | Test, inspection, analysis, demonstration |
| Status | Draft, Approved, Implemented, Verified, Withdrawn |

## Priority Method

The project uses MoSCoW prioritisation.

- **Must:** launch-critical
- **Should:** important but workaround exists
- **Could:** desirable
- **Won't for now:** explicitly deferred

## Traceability

Each feature must trace:

```text
Business Requirement
  -> Functional / Non-functional Requirement
  -> UI / API / Database / Security Design
  -> Test Case
  -> Implementation Work Item
```
