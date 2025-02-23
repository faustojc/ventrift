import 'database.dart';

class ProfileWithRelations {
  final Profile profile;
  final List<Profile> followers;
  final List<Profile> followings;
  final List<Post> posts;
  final List<Place> places;
  final List<Media> medias;
  final List<Rating> ratings;
  final List<Comment> comments;

  ProfileWithRelations({
    required this.profile,
    required this.followers,
    required this.followings,
    required this.posts,
    required this.places,
    required this.medias,
    required this.ratings,
    required this.comments,
  });
}

class PostWithRelations {
  final Post post;
  final Profile profile;
  final Place place;
  final Rating rating;
  final List<Media> medias;
  final List<Comment> comments;

  PostWithRelations({
    required this.post,
    required this.profile,
    required this.place,
    required this.medias,
    required this.comments,
    required this.rating,
  });
}
