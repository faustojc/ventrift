part of 'home_feed_bloc.dart';

@immutable
sealed class HomeFeedEvent {}

final class HomeFeedInitialize extends HomeFeedEvent {}

final class HomeFeedRefresh extends HomeFeedEvent {}

final class HomeFeedLoadMore extends HomeFeedEvent {}
