# C4 System Context

```mermaid
flowchart LR
    Customer[Customer]
    Admin[Store Staff]
    Platform[Premium Clothing E-Commerce Platform]
    Payment[Payment Provider]
    Courier[Courier / Shipping Provider]
    Email[Email Provider]
    Analytics[Analytics Platform]

    Customer --> Platform
    Admin --> Platform
    Platform --> Payment
    Platform --> Courier
    Platform --> Email
    Platform --> Analytics
```
