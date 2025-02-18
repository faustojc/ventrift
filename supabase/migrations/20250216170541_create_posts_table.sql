CREATE TABLE IF NOT EXISTS posts (
    id uuid PRIMARY KEY,
    profile_id uuid REFERENCES profiles(id) NOT NULL,
    place_id uuid REFERENCES places(id) NULL,

    content text NOT NULL,
    is_edited BOOLEAN NOT NULL DEFAULT false,

    created_at timestamptz NOT NULL DEFAULT current_timestamp,
    updated_at timestamptz NOT NULL DEFAULT current_timestamp
)
