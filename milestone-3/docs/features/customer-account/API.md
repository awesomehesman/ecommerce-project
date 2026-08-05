# Customer Account API

## GET /api/v1/customers/me

Returns current customer profile.

## PATCH /api/v1/customers/me

```json
{
  "firstName": "Luhle",
  "lastName": "Hesman",
  "mobileNumber": "+27821234567"
}
```

## GET /api/v1/customers/me/addresses

Returns saved addresses.

## POST /api/v1/customers/me/addresses

Creates an address.

## PATCH /api/v1/customers/me/addresses/{addressId}

Updates an owned address.

## DELETE /api/v1/customers/me/addresses/{addressId}

Deletes or deactivates an address if permitted.

## PATCH /api/v1/customers/me/preferences

Updates permitted communication preferences.
