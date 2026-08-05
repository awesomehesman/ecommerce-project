# Domain Map

```mermaid
flowchart TD
    Identity[Identity & Access]
    Customer[Customer Accounts]
    Catalogue[Catalogue]
    Pricing[Pricing & Promotions]
    Inventory[Inventory]
    Cart[Cart]
    Checkout[Checkout]
    Payment[Payments]
    Order[Orders]
    Shipping[Shipping]
    Notify[Notifications]
    CMS[Content]
    Admin[Administration]
    Reporting[Reporting]

    Identity --> Customer
    Catalogue --> Pricing
    Catalogue --> Inventory
    Customer --> Cart
    Catalogue --> Cart
    Cart --> Checkout
    Pricing --> Checkout
    Inventory --> Checkout
    Checkout --> Payment
    Payment --> Order
    Checkout --> Order
    Order --> Shipping
    Order --> Notify
    Payment --> Notify
    Admin --> Catalogue
    Admin --> Inventory
    Admin --> Order
    Admin --> CMS
    Reporting --> Order
    Reporting --> Payment
    Reporting --> Inventory
```
