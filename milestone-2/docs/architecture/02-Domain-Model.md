# Domain Model

## 1. Domain Boundaries

### Identity and Access

Responsibilities:

- Registration
- Login
- Password reset
- Token/session lifecycle
- Role and permission enforcement
- Administrative identity controls

Owns:

- User credentials
- Roles
- Permissions
- Refresh tokens or sessions
- Authentication audit events

### Customer Accounts

Responsibilities:

- Customer profile
- Saved addresses
- Preferences
- Account order views
- Marketing consent

Owns:

- Customer profile
- Addresses
- Preferences
- Consent records

### Catalogue

Responsibilities:

- Products
- Categories
- Collections
- Attributes
- Images and merchandising content
- Publication lifecycle

Owns:

- Product definitions
- Product variants
- Category hierarchy
- Collection membership
- Product media metadata

### Pricing and Promotions

Responsibilities:

- Standard price
- Sale price
- Voucher rules
- Eligibility
- Discount calculations

Owns:

- Price records
- Promotion definitions
- Voucher usage

### Inventory

Responsibilities:

- On-hand quantity
- Available-to-sell quantity
- Reservation
- Release
- Adjustment
- Low-stock thresholds

Owns:

- Inventory balances
- Reservations
- Inventory movements

### Cart

Responsibilities:

- Guest cart
- Authenticated cart
- Cart items
- Quantity updates
- Cart revalidation

Owns:

- Active carts
- Cart items

### Checkout

Responsibilities:

- Checkout orchestration
- Address validation
- Shipping selection
- Totals calculation
- Final validation
- Checkout state

Owns:

- Checkout session
- Checkout snapshot

### Payments

Responsibilities:

- Provider abstraction
- Payment initiation
- Callback validation
- Payment status
- Refund processing
- Reconciliation

Owns:

- Payment attempts
- Provider references
- Refund records

### Orders

Responsibilities:

- Order creation
- Order numbers
- Order item snapshots
- Order lifecycle
- Status history
- Customer order history

Owns:

- Orders
- Order items
- Order status history

### Shipping

Responsibilities:

- Shipping methods
- Delivery quotations
- Shipment creation
- Tracking
- Delivery status

Owns:

- Shipment records
- Tracking references
- Delivery events

### Notifications

Responsibilities:

- Transactional templates
- Email sending
- Retry
- Delivery status

Owns:

- Notification requests
- Delivery attempts
- Template versions

### Content Management

Responsibilities:

- Homepage banners
- Campaign content
- Informational pages
- Policy content

Owns:

- Content blocks
- Page publication state

### Administration

Responsibilities:

- Admin workflows
- Operational dashboards
- Protected management interfaces
- Audit review

This module orchestrates capabilities but should not duplicate domain ownership.

### Reporting

Responsibilities:

- Operational summaries
- Sales metrics
- Stock reports
- Export

Reporting reads domain-owned data through approved views or projections.

## 2. Key Aggregates

- Product
- Product Variant
- Inventory Item
- Cart
- Checkout Session
- Payment
- Order
- Shipment
- Customer Account
- Promotion

## 3. Key Domain Events

- CustomerRegistered
- ProductCreated
- ProductPublished
- ProductPriceChanged
- StockAdjusted
- StockReserved
- StockReservationReleased
- ProductAddedToCart
- CheckoutStarted
- CheckoutValidated
- PaymentInitiated
- PaymentSucceeded
- PaymentFailed
- OrderCreated
- OrderConfirmed
- OrderPacked
- OrderShipped
- OrderDelivered
- OrderCancelled
- RefundRequested
- RefundCompleted
- NotificationRequested
- NotificationDelivered
- NotificationFailed

## 4. Dependency Rules

- Orders may reference Catalogue snapshots but shall not rely on mutable product descriptions.
- Payments shall not directly modify inventory.
- Checkout coordinates Payments, Inventory, Pricing, Shipping, and Orders.
- Notifications consume approved events and shall not own order state.
- Reporting shall not write to operational aggregates.
- Administration shall call domain application services rather than repositories directly.
