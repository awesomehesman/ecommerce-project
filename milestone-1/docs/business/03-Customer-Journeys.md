# Customer and Operational Journeys

## Journey CJ-001 — First-Time Guest Purchase

### Trigger

A customer discovers the brand through social media, search, referral, or direct navigation.

### Journey

1. Customer opens the storefront.
2. Customer views the homepage or campaign landing content.
3. Customer opens a category or collection.
4. Customer filters or sorts products.
5. Customer opens a product detail page.
6. Customer reviews images, description, price, sizes, colours, stock, and delivery information.
7. Customer selects a variant and quantity.
8. Customer adds the item to cart.
9. Customer reviews the cart.
10. Customer proceeds as guest.
11. Customer enters contact and delivery details.
12. Customer selects a delivery method.
13. Customer reviews the order and total.
14. Customer chooses a payment method.
15. Customer completes payment with the provider.
16. Platform validates payment confirmation.
17. Platform confirms the order.
18. Customer receives confirmation.
19. Staff fulfil the order.
20. Customer receives status updates.

### Success Outcome

A confirmed, paid, fulfilment-ready order exists and the customer has proof of purchase.

### Failure and Recovery

- Product becomes unavailable before payment.
- Payment is cancelled.
- Payment succeeds but callback is delayed.
- Delivery address is unsupported.
- Customer loses connectivity.
- Duplicate payment callback is received.

The system design must provide safe recovery for each case.

---

## Journey CJ-002 — Returning Customer Purchase

1. Customer signs in.
2. Saved cart or wishlist is restored.
3. Customer selects a product.
4. Saved address is presented.
5. Customer confirms or edits delivery details.
6. Customer pays.
7. Order is added to account history.

### Value

Reduced data entry and faster checkout.

---

## Journey CJ-003 — Product Discovery Without Purchase

1. Customer arrives through campaign or search.
2. Customer browses products.
3. Customer applies filters.
4. Customer views product details.
5. Customer saves a product to wishlist or leaves.

### Business Opportunity

Capture consent-based engagement without forcing checkout.

---

## Journey OJ-001 — Product Publication

1. Administrator creates a draft product.
2. Administrator selects category and collections.
3. Administrator enters name, description, pricing, and product attributes.
4. Administrator adds variants.
5. Administrator enters stock.
6. Administrator uploads images.
7. System validates required publication data.
8. Administrator previews the product.
9. Administrator publishes.
10. Product becomes discoverable according to visibility rules.

### Controls

- Incomplete products cannot be published.
- SKU values must be unique.
- Negative stock is prohibited.
- Publication action must be auditable.

---

## Journey OJ-002 — Order Fulfilment

1. Paid order enters fulfilment queue.
2. Staff review order and stock allocation.
3. Staff pick products.
4. Staff pack order.
5. Shipping label or courier booking is created.
6. Tracking information is captured.
7. Order status changes to shipped.
8. Customer receives tracking notification.
9. Delivery confirmation is received or manually recorded.
10. Order status changes to delivered.

### Exception Paths

- Stock discrepancy
- Damaged item
- Delivery booking failure
- Invalid address
- Customer cancellation request
- Partial fulfilment

---

## Journey OJ-003 — Payment Reconciliation

1. Finance or administrator reviews platform payment records.
2. System compares order status with provider transaction status.
3. Unmatched or inconsistent transactions are highlighted.
4. Authorised user investigates.
5. Status is corrected through controlled workflow.
6. Action is audited.

---

## Journey OJ-004 — Customer Support Inquiry

1. Customer provides order number or identity information.
2. Support agent finds the order.
3. Support agent reviews order, payment, fulfilment, delivery, and communication history.
4. Support agent responds or escalates.
5. Notes are recorded where necessary.
