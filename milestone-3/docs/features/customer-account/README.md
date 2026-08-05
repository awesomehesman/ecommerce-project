# Customer Account Feature Specification

## Objective

Allow registered customers to manage their identity-linked profile, addresses, preferences, and account-level order access.

## Requirements

| ID | Requirement | Priority |
|---|---|---|
| FR-ACCT-001 | When a registered customer opens their profile, the system shall return the current profile details permitted for self-service. | Must |
| FR-ACCT-002 | When a customer submits valid profile changes, the system shall update the permitted fields. | Must |
| FR-ACCT-003 | When a customer creates a valid address, the system shall store it under that customer's account. | Must |
| FR-ACCT-004 | When a customer marks an address as default, the system shall ensure only one default address exists per configured address type. | Must |
| FR-ACCT-005 | When a customer deletes an address not required by an active transaction, the system shall remove or deactivate it. | Must |
| FR-ACCT-006 | The system shall prevent one customer from accessing another customer's profile or addresses. | Must |
| FR-ACCT-007 | Where marketing preference management is available, the system shall record consent changes with timestamp and source. | Should |
| FR-ACCT-008 | When a customer views order history, the system shall return only orders associated with the authenticated customer. | Must |

## Address Fields

- Recipient name
- Mobile number
- Address line 1
- Address line 2
- Suburb
- City/town
- Province
- Postal code
- Country code
- Delivery instructions
- Default indicator

## Rules

- South Africa is the initial default country.
- Address validation must remain provider-independent.
- Historical order delivery addresses are snapshots and do not change when a saved address is edited.
- Customers cannot self-assign staff roles.
