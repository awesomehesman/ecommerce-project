# E-Commerce Event Schema

Standard events:

- view_item_list
- select_item
- view_item
- add_to_wishlist
- add_to_cart
- remove_from_cart
- view_cart
- begin_checkout
- add_shipping_info
- add_payment_info
- purchase
- refund

Each event must include a unique event ID, timestamp, currency, value where applicable, item identifiers, and consent status.
