-- Drop all follows indexes

ALTER TABLE follows
    DROP CONSTRAINT follows_pkey;
ALTER TABLE follows
    DROP CONSTRAINT follows_unique;
ALTER TABLE follows
    DROP CONSTRAINT follows_follower_id_fkey;
ALTER TABLE follows
    DROP CONSTRAINT follows_following_id_fkey;
DROP INDEX IF EXISTS follows_pkey;
DROP INDEX IF EXISTS follows_unique;

-- Drop all medias indexes

ALTER TABLE medias
    DROP CONSTRAINT medias_pkey;
ALTER TABLE medias
    DROP CONSTRAINT medias_profile_id_fkey;
ALTER TABLE medias
    DROP CONSTRAINT medias_place_id_fkey;
ALTER TABLE medias
    DROP CONSTRAINT medias_post_id_fkey;
DROP INDEX IF EXISTS medias_pkey;

-- Drop all ratings indexes

ALTER TABLE ratings
    DROP CONSTRAINT ratings_pkey;
ALTER TABLE ratings
    DROP CONSTRAINT ratings_profile_id_fkey;
ALTER TABLE ratings
    DROP CONSTRAINT ratings_place_id_fkey;
ALTER TABLE ratings
    DROP CONSTRAINT ratings_post_id_fkey;
DROP INDEX IF EXISTS ratings_pkey;

-- Drop all comments indexes

ALTER TABLE comments
    DROP CONSTRAINT comments_pkey;
ALTER TABLE comments
    DROP CONSTRAINT comments_profile_id_fkey;
ALTER TABLE comments
    DROP CONSTRAINT comments_place_id_fkey;
ALTER TABLE comments
    DROP CONSTRAINT comments_post_id_fkey;
DROP INDEX IF EXISTS comments_pkey;

-- Drop all posts indexes

ALTER TABLE posts
    DROP CONSTRAINT posts_pkey;
ALTER TABLE posts
    DROP CONSTRAINT posts_profile_id_fkey;
ALTER TABLE posts
    DROP CONSTRAINT posts_place_id_fkey;
DROP INDEX IF EXISTS posts_pkey;

-- Drop all profiles indexes

ALTER TABLE profiles
    DROP CONSTRAINT profiles_pkey;
ALTER TABLE profiles
    DROP CONSTRAINT profiles_username_key;
ALTER TABLE profiles
    DROP CONSTRAINT profiles_id_fkey;
DROP INDEX IF EXISTS profiles_pkey;
DROP INDEX IF EXISTS profiles_username_key;

-- Drop all tables
DROP TABLE IF EXISTS follows;
DROP TABLE IF EXISTS medias;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS profiles;
