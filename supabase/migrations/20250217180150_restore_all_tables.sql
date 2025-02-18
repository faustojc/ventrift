CREATE TABLE IF NOT EXISTS profiles
(
    id          uuid PRIMARY KEY REFERENCES auth.users ON DELETE CASCADE,

    username    VARCHAR(50) UNIQUE  NOT NULL,
    user_handle VARCHAR(50) UNIQUE  NOT NULL,
    full_name   VARCHAR(120)        NOT NULL,
    email       VARCHAR(120) UNIQUE NOT NULL,

    avatar_url  TEXT                NULL,
    bio         TEXT                NULL,
    birthdate   DATE                NULL,
    country     VARCHAR(50)         NULL,

    created_at  timestamptz         NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at  timestamptz         NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS posts
(
    id         uuid PRIMARY KEY,
    profile_id uuid REFERENCES profiles (id) NOT NULL,
    place_id   uuid REFERENCES places (id)   NULL,

    content    TEXT                          NOT NULL,
    is_edited  BOOLEAN                       NOT NULL DEFAULT FALSE,

    created_at timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS comments
(
    id                uuid PRIMARY KEY,
    profile_id        uuid REFERENCES profiles (id) NOT NULL,
    place_id          uuid REFERENCES places (id)   NULL,
    post_id           uuid REFERENCES posts (id)    NULL,

    parent_comment_id uuid                          NULL,

    comment_text      TEXT                          NOT NULL,
    like_count        NUMERIC                       NOT NULL DEFAULT 0,
    dislike_count     NUMERIC                       NOT NULL DEFAULT 0,
    is_edited         BOOLEAN                       NOT NULL DEFAULT FALSE,

    created_at        timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at        timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS ratings
(
    id         uuid PRIMARY KEY,
    profile_id uuid REFERENCES profiles (id) NOT NULL,
    place_id   uuid REFERENCES places (id)   NULL,
    post_id    uuid REFERENCES posts (id)    NULL,

    name       VARCHAR(50)                   NOT NULL,
    rating     NUMERIC                       NOT NULL,

    created_at timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS medias
(
    id         uuid PRIMARY KEY,
    profile_id uuid REFERENCES profiles (id) NOT NULL,
    place_id   uuid REFERENCES places (id)   NULL,
    post_id    uuid REFERENCES posts (id)    NULL,

    media_url  TEXT                          NOT NULL,
    media_type VARCHAR(100)                  NOT NULL,

    created_at timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS follows
(
    id           uuid PRIMARY KEY                       DEFAULT gen_random_uuid(),
    follower_id  uuid REFERENCES profiles (id) NOT NULL,
    following_id uuid REFERENCES profiles (id) NOT NULL,

    status       VARCHAR(20)                   NOT NULL DEFAULT 'pending',

    created_at   timestamptz                   NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT follows_unique UNIQUE (follower_id, following_id)
);

