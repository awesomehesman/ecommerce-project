# Catalogue Administration Foundation

## Objective

Allow authorised staff to create and maintain products, categories, variants, media, publication state, and basic stock records.

## Scope

- Product draft creation
- Product editing
- Category management
- Variant creation
- SKU uniqueness
- Price entry
- Stock entry
- Product image metadata
- Draft, published, archived states
- Product preview
- Audit history

## Requirements

| ID | Requirement | Priority |
|---|---|---|
| FR-ADMIN-PROD-001 | When an authorised catalogue manager creates a product, the system shall save it initially as a draft. | Must |
| FR-ADMIN-PROD-002 | When a product lacks required publication data, the system shall prevent publication and identify missing fields. | Must |
| FR-ADMIN-PROD-003 | When a variant is created, the system shall require a unique SKU. | Must |
| FR-ADMIN-PROD-004 | When an authorised user publishes a valid product, the system shall make it eligible for storefront discovery according to visibility rules. | Must |
| FR-ADMIN-PROD-005 | When a product is archived, the system shall remove it from customer discovery without deleting historical order references. | Must |
| FR-ADMIN-CAT-001 | The system shall allow authorised users to create and order categories. | Must |
| FR-ADMIN-CAT-002 | The system shall prevent circular category-parent relationships. | Must |
| FR-ADMIN-MEDIA-001 | When a valid image is uploaded, the system shall store the file in object storage and persist media metadata. | Must |
| FR-ADMIN-MEDIA-002 | If an uploaded file violates size, type, or security rules, the system shall reject it. | Must |
| FR-ADMIN-AUDIT-001 | The system shall audit product publication, archival, price, SKU, and stock changes. | Must |

## Publication Checklist

A product requires:

- Name
- Unique slug
- Description
- Primary category
- At least one active variant
- Valid price
- Unique SKU per variant
- At least one image
- Non-negative stock configuration
- Publication visibility
