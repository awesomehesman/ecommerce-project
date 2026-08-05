# Frontend Architecture

## 1. Runtime

- Angular 20+
- TypeScript strict mode
- Standalone components
- Angular Router
- Signals
- RxJS
- Reactive Forms
- SCSS or Tailwind with design tokens

## 2. Project Structure

```text
src/app/
  core/
    auth/
    http/
    guards/
    configuration/
    error-handling/
  shared/
    ui/
    forms/
    pipes/
    directives/
    models/
  features/
    home/
    catalogue/
    product/
    search/
    wishlist/
    cart/
    checkout/
    account/
    orders/
    admin/
  layout/
    storefront/
    admin/
```

## 3. State Strategy

- Signals for local component and feature state
- Computed signals for derived synchronous state
- RxJS for HTTP and asynchronous event streams
- A feature store only where complexity justifies it
- Avoid global state for simple server-derived views

## 4. Routing

- Lazy-load feature routes
- Separate storefront and admin route trees
- Use guards for authentication and authorization
- Preserve safe return URLs after login
- Use resolvers only where they improve experience without blocking unnecessarily

## 5. HTTP

Interceptors should provide:

- Authorization header
- Correlation ID
- Common error transformation
- Optional retry for safe idempotent operations
- Locale or client metadata if required

## 6. Forms

- Typed reactive forms
- Server and client validation
- Accessible error summaries
- Preserve entered data where safe
- Never log sensitive form content

## 7. Design System

The UI should define:

- Typography scale
- Spacing scale
- Colour tokens
- Elevation
- Radius
- Buttons
- Inputs
- Product cards
- Dialogs
- Toasts
- Loading skeletons
- Empty states
- Error states

## 8. Performance

- Route-level lazy loading
- Optimised images
- Responsive image sources
- Deferred non-critical sections
- Avoid oversized third-party packages
- Use server-side rendering or prerendering where SEO value justifies it
- Monitor bundle budgets

## 9. Accessibility

- Semantic HTML
- Visible focus indicators
- Keyboard navigation
- Accessible names
- Form labels and errors
- Sufficient contrast
- Reduced-motion support
- Screen-reader announcements for cart and validation changes

## 10. Security

- Do not store long-lived secrets in browser storage
- Avoid unsafe HTML rendering
- Use Angular sanitization correctly
- Protect admin routes and APIs
- Treat client authorization as UX only; backend remains authoritative
