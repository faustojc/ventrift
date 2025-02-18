CREATE TABLE IF NOT EXISTS comments (
    id uuid PRIMARY KEY,
    profile_id uuid REFERENCES profiles(id) NOT NULL,
    place_id uuid REFERENCES places(id) NULL,
    post_id uuid REFERENCES posts(id) NULL,

    parent_comment_id uuid NULL,

    comment_text text NOT NULL,
    like_count numeric NOT NULL DEFAULT 0,
    dislike_count numeric NOT NULL DEFAULT 0,
    is_edited boolean NOT NULL DEFAULT false,

    created_at timestamptz NOT NULL DEFAULT current_timestamp,
    updated_at timestamptz NOT NULL DEFAULT current_timestamp
)
