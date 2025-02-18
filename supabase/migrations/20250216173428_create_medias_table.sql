CREATE TABLE IF NOT EXISTS medias (
    id uuid PRIMARY KEY,
    profile_id uuid REFERENCES profiles(id) NOT NULL,
    place_id uuid REFERENCES places(id) NULL,
    post_id uuid REFERENCES posts(id) NULL,

    media_url text NOT NULL,
    media_type varchar(100) NOT NULL,

    created_at timestamptz NOT NULL DEFAULT current_timestamp,
    updated_at timestamptz NOT NULL DEFAULT current_timestamp
)
