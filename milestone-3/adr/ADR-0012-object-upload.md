# ADR-0012: Store Uploaded Product Media Outside the API Filesystem

- **Status:** Proposed
- **Date:** 2026-08-05

## Decision

Store product media in Azure Blob Storage and persist media metadata in PostgreSQL.

## Consequences

- Validate MIME type, file signature, size, and dimensions.
- Use generated blob paths.
- Support orphan cleanup.
- Do not trust client-provided filenames.
