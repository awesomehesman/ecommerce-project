# Azure Infrastructure Architecture

## 1. Initial Components

- Azure Front Door or CDN
- Static Web Apps or Storage-hosted Angular frontend
- Azure App Service or Azure Container Apps for Spring Boot
- Azure Database for PostgreSQL
- Azure Cache for Redis
- Azure Blob Storage
- Azure Key Vault
- Application Insights
- Azure Monitor
- Log Analytics
- Azure Communication Services or external email provider where appropriate

## 2. Environment Strategy

- Local
- Development
- Test/QA
- Production

Production must use separate secrets and data resources.

## 3. Network Strategy

Initial low-cost architecture may use public managed endpoints with:

- Firewall restrictions
- TLS
- strong authentication
- managed identity
- service-level access controls

As budget and maturity increase:

- VNet integration
- Private endpoints
- Network security groups
- private database access

## 4. Scaling

- Frontend served through edge cache
- API stateless and horizontally scalable
- Database scaled vertically first
- Redis introduced for proven cache needs
- Media delivered through CDN

## 5. Availability

- Health checks
- deployment slots or revision-based deployment
- database backup
- application restart policies
- alerting
- provider timeout and retry configuration

## 6. Cost Control

- Start with low-cost SKUs
- Budget alerts
- storage lifecycle rules
- sampling for telemetry
- autoscaling thresholds
- non-production shutdown schedules where practical

## 7. Observability

Monitor:

- Request rate
- Error rate
- latency
- dependency failures
- database connections
- payment failures
- webhook failures
- order confirmation failures
- notification failures
- low-stock and fulfilment backlog metrics

## 8. Disaster Recovery

Initial target:

- Restore from managed backup
- redeploy application from CI/CD
- restore secrets/configuration from controlled source
- recover media from durable blob storage
- document recovery time and recovery point objectives before launch
