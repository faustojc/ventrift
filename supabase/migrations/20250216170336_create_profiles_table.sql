CREATE TABLE IF NOT EXISTS profiles (
    id uuid PRIMARY KEY REFERENCES auth.users ON DELETE CASCADE,

    username varchar(50) UNIQUE NOT NULL,
    user_handle varchar(50) UNIQUE NOT NULL,
    full_name varchar(120) NOT NULL,
    email varchar(120) UNIQUE NOT NULL,

    avatar_url text NULL,
    bio text NULL,
    birthdate DATE NULL,
    country varchar(50) NULL,

    created_at timestamptz NOT NULL DEFAULT current_timestamp,
    updated_at timestamptz NOT NULL DEFAULT current_timestamp
)
