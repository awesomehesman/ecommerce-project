# Platform Foundation Requirements

## Configuration

- Environment-specific configuration
- Secrets externalised
- Feature flag readiness
- Safe defaults
- Configuration validation at startup

## Error Handling

| ID | Requirement |
|---|---|
| FR-PLAT-ERR-001 | When an unhandled server error occurs, the system shall return a safe generic problem response and log the detailed exception with correlation ID. |
| FR-PLAT-ERR-002 | When validation fails, the system shall return field-level errors where applicable. |
| FR-PLAT-ERR-003 | The system shall use stable machine-readable error codes. |

## Logging

| ID | Requirement |
|---|---|
| NFR-LOG-001 | The system shall produce structured logs. |
| NFR-LOG-002 | The system shall include correlation IDs in API logs and responses. |
| NFR-LOG-003 | The system shall not log passwords, tokens, raw payment data, or unnecessary personal information. |
| NFR-LOG-004 | Sensitive administrative changes shall produce audit records. |

## Health and Readiness

- Liveness endpoint
- Readiness endpoint
- Database dependency health
- Cache dependency health where required
- External providers should not necessarily make core readiness fail

## Validation

- JSON schema/DTO validation
- Domain validation
- Database constraints
- File upload validation
- Consistent validation messages

## Time and Locale

- Store timestamps in UTC
- Default display locale: en-ZA
- Default currency: ZAR
- Address country default: ZA
