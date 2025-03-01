import 'package:powersync/powersync.dart';

const powersyncSchema = Schema([
  Table('places', [
    Column.text('place_name'),
    Column.text('address'),
    Column.text('city'),
    Column.text('state'),
    Column.text('country'),
    Column.text('latitude'),
    Column.text('longitude'),
    Column.text('zip_code'),
    Column.text('place_types'),
    Column.text('phone_number'),
    Column.text('website'),
    Column.text('created_at'),
    Column.text('updated_at'),
  ]),
  Table('profiles', [
    Column.text('username'),
    Column.text('user_handle'),
    Column.text('full_name'),
    Column.text('email'),
    Column.text('avatar_url'),
    Column.text('bio'),
    Column.text('birthdate'),
    Column.text('country'),
    Column.text('created_at'),
    Column.text('updated_at'),
  ]),
  Table('posts', [
    Column.text('profile_id'),
    Column.text('place_id'),
    Column.text('content'),
    Column.integer('is_edited'),
    Column.text('created_at'),
    Column.text('updated_at'),
  ], indexes: [
    Index('profiles', [IndexedColumn('profile_id')]),
    Index('places', [IndexedColumn('place_id')]),
  ]),
  Table('follows', [
    Column.text('follower_id'),
    Column.text('following_id'),
    Column.text('status'),
    Column.text('created_at'),
  ], indexes: [
    Index('profiles', [IndexedColumn('follower_id'), IndexedColumn('following_id')]),
  ]),
  Table('comments', [
    Column.text('profile_id'),
    Column.text('place_id'),
    Column.text('post_id'),
    Column.text('parent_comment_id'),
    Column.text('comment_text'),
    Column.text('like_count'),
    Column.text('dislike_count'),
    Column.integer('is_edited'),
    Column.text('created_at'),
    Column.text('updated_at'),
  ], indexes: [
    Index('profiles', [IndexedColumn('profile_id')]),
    Index('places', [IndexedColumn('place_id')]),
    Index('posts', [IndexedColumn('post_id')]),
  ]),
  Table('medias', [
    Column.text('profile_id'),
    Column.text('place_id'),
    Column.text('post_id'),
    Column.text('media_url'),
    Column.text('media_type'),
    Column.text('created_at'),
    Column.text('updated_at'),
  ], indexes: [
    Index('profiles', [IndexedColumn('profile_id')]),
    Index('places', [IndexedColumn('place_id')]),
    Index('posts', [IndexedColumn('post_id')]),
  ]),
  Table('ratings', [
    Column.text('profile_id'),
    Column.text('place_id'),
    Column.text('post_id'),
    Column.text('name'),
    Column.text('rating'),
    Column.text('created_at'),
    Column.text('updated_at'),
  ], indexes: [
    Index('profiles', [IndexedColumn('profile_id')]),
    Index('places', [IndexedColumn('place_id')]),
    Index('posts', [IndexedColumn('post_id')]),
  ])
]);
