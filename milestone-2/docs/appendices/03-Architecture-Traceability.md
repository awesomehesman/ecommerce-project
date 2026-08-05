# Architecture Traceability Matrix

| Business Requirement | Architecture Response | QAS | ADR |
|---|---|---|---|
| BR-PAY-001 Secure payments | Hosted payment integration, no card storage | QAS-SEC-004 | ADR-0004 |
| BR-INV-001 Stock control | Inventory domain with movements and reservations | QAS-AVAIL-003 | ADR-0005 |
| BR-ORDER-001 Order creation | Order aggregate and idempotent confirmation | QAS-AVAIL-002 | ADR-0006 |
| BR-ADMIN-001 Administrative access | RBAC and server-side authorization | QAS-SEC-002 | ADR-0007 |
| BR-CAT-001 Catalogue management | Catalogue domain module | QAS-MAINT-003 | ADR-0001 |
| BR-REPORT-001 Reporting | Read projections and export interfaces | QAS-MAINT-004 | ADR-0008 |
