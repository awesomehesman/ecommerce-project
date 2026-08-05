# Business Rules

## Product and Catalogue Rules

### RULE-PROD-001

Every sellable product shall have at least one active sellable variant.

### RULE-PROD-002

Every variant shall have a unique SKU.

### RULE-PROD-003

A product shall not be published unless required product information, at least one image, pricing, and at least one active variant are present.

### RULE-PROD-004

A sale price shall be lower than the normal selling price.

### RULE-PROD-005

A product may belong to one primary category and multiple collections.

### RULE-PROD-006

Archived products shall not be discoverable by customers.

## Inventory Rules

### RULE-INV-001

Stock shall be managed at variant level.

### RULE-INV-002

Available-to-sell quantity shall not be less than zero.

### RULE-INV-003

The system shall prevent the confirmed purchase of more units than are available.

### RULE-INV-004

Inventory adjustments shall record the actor, timestamp, reason, and quantity change.

### RULE-INV-005

The exact reservation point shall be defined in the inventory and checkout technical specification.

## Cart Rules

### RULE-CART-001

A cart item shall reference a sellable variant, not only a parent product.

### RULE-CART-002

The cart shall display the latest valid price before checkout confirmation.

### RULE-CART-003

The customer shall be informed when price or availability changes after an item was added.

### RULE-CART-004

Cart quantity shall not exceed configured limits or available stock.

## Promotion Rules

### RULE-PROMO-001

A promotion shall have a defined validity period or explicit no-expiry configuration.

### RULE-PROMO-002

A voucher may be restricted by customer, product, category, collection, order value, usage count, or date.

### RULE-PROMO-003

The platform shall prevent discount results that create a negative payable amount.

### RULE-PROMO-004

Promotion stacking shall be disabled by default unless explicitly configured.

## Checkout Rules

### RULE-CHECKOUT-001

The customer shall see the final item total, discounts, delivery charges, taxes where applicable, and payable total before payment.

### RULE-CHECKOUT-002

Unsupported delivery addresses shall not proceed to payment.

### RULE-CHECKOUT-003

Checkout shall revalidate price, stock, promotion, and shipping before payment initiation.

### RULE-CHECKOUT-004

The customer shall accept applicable terms before placing an order.

## Payment Rules

### RULE-PAY-001

Raw card details shall not be stored or processed directly by the platform.

### RULE-PAY-002

Payment provider callbacks shall be cryptographically or otherwise securely validated according to provider guidance.

### RULE-PAY-003

Payment callbacks shall be idempotent.

### RULE-PAY-004

A payment success shall not create duplicate orders.

### RULE-PAY-005

A customer-facing redirect alone shall not be treated as sufficient proof of successful payment.

### RULE-PAY-006

Refund actions shall require authorised access and audit logging.

## Order Rules

### RULE-ORDER-001

Every order shall have a unique human-readable order number and an internal immutable identifier.

### RULE-ORDER-002

Order item price and product-description snapshots shall be retained so historical orders do not change when catalogue data changes.

### RULE-ORDER-003

Order status transitions shall follow an approved lifecycle.

### RULE-ORDER-004

A cancelled order shall not continue through normal fulfilment.

### RULE-ORDER-005

Status changes shall be timestamped and auditable.

## Customer and Privacy Rules

### RULE-ACCT-001

Customer email addresses shall be normalised and unique where accounts are created.

### RULE-ACCT-002

Passwords shall never be stored in plain text.

### RULE-PRIV-001

Marketing consent shall be separate from acceptance of transactional terms.

### RULE-PRIV-002

Transactional communication may be sent where necessary to complete or support an order.

### RULE-PRIV-003

Personal information shall not be exposed to unauthorised administrative users.

## Administration Rules

### RULE-ADMIN-001

Administrative functions shall require authentication.

### RULE-ADMIN-002

Permissions shall be role-based and support least privilege.

### RULE-ADMIN-003

Sensitive actions shall be auditable.

### RULE-ADMIN-004

An administrator shall not be able to permanently delete financial order history through the normal user interface.
