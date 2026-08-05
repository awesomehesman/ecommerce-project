# Application Shell and Navigation Specification

## Objective

Provide the shared responsive structure used across the storefront and administration portal.

## Storefront Shell

### Header

- Brand logo
- Primary navigation
- Search entry
- Customer account entry
- Wishlist entry
- Cart entry with quantity badge
- Mobile menu trigger

### Footer

- Customer support
- Delivery information
- Returns policy
- Privacy policy
- Terms
- Social links
- Newsletter consent entry where approved

## Admin Shell

- Protected admin header
- Side navigation
- Current user and role
- Environment indicator outside production
- Breadcrumbs
- Notification area
- Content workspace

## EARS Requirements

| ID | Requirement |
|---|---|
| UI-SHELL-001 | While the viewport is mobile-sized, the system shall replace the full primary navigation with an accessible menu trigger. |
| UI-SHELL-002 | When cart quantity changes, the system shall update the cart badge without a full page reload. |
| UI-SHELL-003 | When a keyboard user opens the mobile menu, focus shall move into the menu and return to the trigger when closed. |
| UI-SHELL-004 | While an administrator is unauthenticated, the system shall prevent access to the admin shell. |
| UI-SHELL-005 | The system shall provide a skip link to main content. |
| UI-SHELL-006 | Navigation landmarks shall use semantic HTML. |

## Initial Routes

```text
/
/shop
/collections/:slug
/products/:slug
/search
/cart
/wishlist
/account
/account/addresses
/account/orders
/login
/register
/forgot-password
/admin
/admin/products
/admin/categories
```
