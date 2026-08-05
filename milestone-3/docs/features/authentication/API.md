# Authentication API Contracts

## POST /api/v1/auth/register

### Request

```json
{
  "firstName": "Luhle",
  "lastName": "Hesman",
  "email": "luhle@example.com",
  "password": "ExamplePassword123!",
  "acceptTerms": true,
  "marketingConsent": false
}
```

### Response 201

```json
{
  "customerId": "ccde4a31-e938-4b41-a182-1dd0f86baf52",
  "email": "luhle@example.com",
  "status": "ACTIVE"
}
```

## POST /api/v1/auth/login

### Request

```json
{
  "email": "luhle@example.com",
  "password": "ExamplePassword123!"
}
```

### Response 200

```json
{
  "accessToken": "short-lived-token",
  "expiresIn": 900,
  "user": {
    "id": "ccde4a31-e938-4b41-a182-1dd0f86baf52",
    "email": "luhle@example.com",
    "roles": ["CUSTOMER"]
  }
}
```

Refresh credentials should preferably use an HttpOnly, Secure cookie where the chosen architecture supports it.

## POST /api/v1/auth/refresh

Returns a renewed access token for a valid refresh session.

## POST /api/v1/auth/logout

Revokes the active refresh session.

## POST /api/v1/auth/forgot-password

### Request

```json
{
  "email": "luhle@example.com"
}
```

### Response 202

Always return a neutral accepted response.

## POST /api/v1/auth/reset-password

```json
{
  "token": "single-use-reset-token",
  "newPassword": "NewExamplePassword123!"
}
```

## GET /api/v1/auth/me

Returns the current authenticated identity and effective roles.
