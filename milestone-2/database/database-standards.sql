-- PostgreSQL project standards baseline

-- UUIDs are recommended for business primary keys.
-- All timestamps are stored in UTC.
-- Monetary values use NUMERIC, never FLOAT/REAL.
-- Schema changes must be applied through versioned migrations.

CREATE TABLE IF NOT EXISTS schema_example (
    id UUID PRIMARY KEY,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    created_by UUID NULL,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_by UUID NULL,
    version BIGINT NOT NULL DEFAULT 0
);
