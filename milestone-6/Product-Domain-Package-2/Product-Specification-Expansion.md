# Product Specification v1.1

## Product Field Dictionary
Detailed definitions for id, sku, slug, name, description, status, visibility, brandId, categoryIds, seoTitle, seoDescription, createdAt, updatedAt.

## Business Rules
Products cannot be published without at least one active variant, one primary image, a valid category, and a selling price.

## State Machine
Draft → Review → Scheduled → Published → Archived with transition rules and permissions.

## Permissions Matrix
Admin, Merchandiser, Content Editor, Read Only roles with CRUD and publish permissions.

## Audit Requirements
Track who created, updated, published, archived, restored, and deleted products with timestamps.

## API Request Examples
Create Product, Update Product, Publish Product, Archive Product payload examples.

## Database Constraints
Unique SKU, unique slug, FK constraints, optimistic locking, soft delete.

## Acceptance Tests
Publish validation, duplicate SKU prevention, archived visibility, SEO validation.

