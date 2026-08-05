# Cross-Cutting Concerns

## Logging

- Structured JSON logs
- Correlation ID
- Request ID
- User or actor ID where permitted
- No secrets
- Consistent severity levels

## Tracing

Trace critical flows:

- Login
- Add to cart
- Checkout
- Payment
- Order confirmation
- Shipment creation
- Notification delivery

## Metrics

Track both technical and business metrics.

## Configuration

- Environment-specific configuration
- Secrets externalised
- Feature flags where useful
- Safe defaults

## Error Handling

- Consistent API problems
- User-safe messages
- Operational detail in logs
- Retry only where safe

## Resilience

- Timeouts on external calls
- Bounded retries
- Circuit breaker where justified
- Idempotency
- Dead-letter or retry storage for async work

## SEO

- Semantic routes
- Metadata
- canonical URLs
- sitemap
- robots configuration
- structured product data
- SSR or prerender evaluation

## Accessibility

- WCAG 2.2 AA target
- keyboard support
- focus management
- semantic markup
- screen-reader feedback
- contrast and zoom support

## Internationalisation

Initial locale may be English (South Africa), but:

- Currency formatting must use locale-aware utilities.
- Dates and addresses should not be hard-coded to one display format.
- User-facing strings should be centralised where practical.

## Time

- Store timestamps in UTC.
- Present using configured local timezone.
- Treat promotion start/end boundaries explicitly.
