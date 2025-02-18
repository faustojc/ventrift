CREATE TABLE IF NOT EXISTS follows (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    follower_id uuid REFERENCES profiles(id) NOT NULL,
    following_id uuid REFERENCES profiles(id) NOT NULL,

    status VARCHAR(20) NOT NULL DEFAULT 'pending',

    created_at timestamptz NOT NULL DEFAULT current_timestamp,

    CONSTRAINT follows_unique UNIQUE (follower_id, following_id)
);
