# C4 Container Diagram

```mermaid
flowchart LR
    Browser[Customer/Admin Browser]
    Frontend[Angular Web Application]
    API[Spring Boot Modular Monolith]
    DB[(PostgreSQL)]
    Redis[(Redis)]
    Blob[(Azure Blob Storage)]
    KV[Azure Key Vault]
    Monitor[Application Insights]
    Payment[Payment Provider]
    Courier[Courier Provider]
    Email[Email Provider]

    Browser --> Frontend
    Frontend --> API
    API --> DB
    API --> Redis
    API --> Blob
    API --> KV
    API --> Monitor
    API --> Payment
    API --> Courier
    API --> Email
```
