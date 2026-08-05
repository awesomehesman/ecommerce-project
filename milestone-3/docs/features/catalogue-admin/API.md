# Catalogue Administration API

All endpoints require explicit catalogue permissions.

## POST /api/v1/admin/products

Creates a draft product.

## GET /api/v1/admin/products

Returns paginated admin product results including draft and archived items.

## GET /api/v1/admin/products/{productId}

Returns editable product details.

## PATCH /api/v1/admin/products/{productId}

Updates permitted fields using optimistic concurrency.

## POST /api/v1/admin/products/{productId}/variants

Creates a variant.

## PATCH /api/v1/admin/products/{productId}/variants/{variantId}

Updates variant information.

## POST /api/v1/admin/products/{productId}/publish

Validates and publishes a product.

## POST /api/v1/admin/products/{productId}/archive

Archives a product.

## POST /api/v1/admin/products/{productId}/media

Uses a controlled upload strategy; direct-to-blob upload may be introduced with signed upload credentials.

## POST /api/v1/admin/categories

Creates a category.

## PATCH /api/v1/admin/categories/{categoryId}

Updates category metadata and ordering.
