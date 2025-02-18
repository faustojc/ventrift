CREATE TABLE IF NOT EXISTS places (
    id uuid PRIMARY KEY,

    place_name varchar(255) NOT NULL,
    address text NOT NULL,
    city varchar(100) NOT NULL,
    state varchar(100) NOT NULL,
    country varchar(100) NOT NULL,
    latitude numeric NOT NULL,
    longitude numeric NOT NULL,

    zip_code varchar(10) NOT NULL,
    place_types json NULL,
    phone_number varchar(20) NULL,
    website text NULL,

    created_at timestamptz NOT NULL DEFAULT current_timestamp,
    updated_at timestamptz NOT NULL DEFAULT current_timestamp
)
