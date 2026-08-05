# ADR-0009: Store Media in Object Storage

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Store product media in Azure Blob Storage and retain metadata/URLs in PostgreSQL.

## Rationale

Object storage is more scalable and cost-effective than relational BLOB storage.

## Consequences

Upload validation, lifecycle, CDN, and orphan cleanup are required.
