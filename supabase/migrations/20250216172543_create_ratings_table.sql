CREATE TABLE IF NOT EXISTS ratings (
    id uuid PRIMARY KEY,
    profile_id uuid REFERENCES profiles(id) NOT NULL,
    place_id uuid REFERENCES places(id) NULL,
    post_id uuid REFERENCES posts(id) NULL,

    name varchar(50) NOT NULL,
    rating numeric NOT NULL,

    created_at timestamptz NOT NULL DEFAULT current_timestamp,
    updated_at timestamptz NOT NULL DEFAULT current_timestamp
)
