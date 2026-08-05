# Authentication Database Design

## app_users

| Column | Type | Nullable | Constraints |
|---|---|---|---|
| id | uuid | No | PK |
| email_normalized | varchar(254) | No | Unique |
| password_hash | varchar(255) | No | |
| account_status | varchar(30) | No | |
| email_verified_at | timestamptz | Yes | |
| failed_login_count | integer | No | default 0 |
| locked_until | timestamptz | Yes | |
| created_at | timestamptz | No | |
| updated_at | timestamptz | No | |
| version | bigint | No | |

## roles

| Column | Type | Nullable | Constraints |
|---|---|---|---|
| id | uuid | No | PK |
| code | varchar(80) | No | Unique |
| name | varchar(120) | No | |

## user_roles

Composite uniqueness on user_id and role_id.

## refresh_sessions

Stores hashed refresh-token identifiers or session references, expiry, revocation, user agent metadata, and last use.

## password_reset_tokens

Stores only a hash of the reset token, expiry, use timestamp, and user reference.

## auth_audit_events

Records login success/failure, logout, refresh revocation, password reset, account restriction, and administrative changes.
