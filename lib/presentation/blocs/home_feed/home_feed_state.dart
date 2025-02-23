part of 'home_feed_bloc.dart';

sealed class HomeFeedState {
  final List<PostWithRelations> posts;

  HomeFeedState(this.posts);
}

final class HomeFeedInitial extends HomeFeedState {
  HomeFeedInitial() : super([]);
}

final class HomeFeedLoading extends HomeFeedState {
  HomeFeedLoading() : super([]);
}

final class HomeFeedRefreshing extends HomeFeedState {
  HomeFeedRefreshing(super.posts);
}

final class HomeFeedLoadingMore extends HomeFeedState {
  HomeFeedLoadingMore(super.posts);
}

final class HomeFeedLoaded extends HomeFeedState {
  HomeFeedLoaded(super.posts);
}

final class HomeFeedError extends HomeFeedState {
  final String errorMessage;
  HomeFeedError(super.posts, this.errorMessage);
}
