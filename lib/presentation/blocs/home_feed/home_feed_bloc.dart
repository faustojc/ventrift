import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventrift/data/sources/models.dart';
import 'package:ventrift/domain/repositories/post_repo.dart';

part 'home_feed_event.dart';
part 'home_feed_state.dart';

class HomeFeedBloc extends Bloc<HomeFeedEvent, HomeFeedState> {
  final PostRepo _postRepo;

  HomeFeedBloc(this._postRepo) : super(HomeFeedInitial()) {
    on<HomeFeedInitialize>((event, emit) async {
      emit(HomeFeedLoading());

      try {
        final posts = await _postRepo.getPosts();
        emit(HomeFeedLoaded(posts));
      } catch (e) {
        emit(HomeFeedError(state.posts, e.toString()));
      }
    });
    on<HomeFeedRefresh>((event, emit) async {
      emit(HomeFeedRefreshing(state.posts));

      try {
        final posts = await _postRepo.getPosts();
        emit(HomeFeedLoaded(posts));
      } catch (e) {
        emit(HomeFeedError(state.posts, e.toString()));
      }
    });

    on<HomeFeedLoadMore>((event, emit) async {
      emit(HomeFeedLoadingMore(state.posts));

      try {
        final morePosts = await _postRepo.getPosts(limit: state.posts.length, offset: state.posts.length + 15);
        final newPosts = state.posts;
        newPosts.addAll(morePosts);

        emit(HomeFeedLoaded(newPosts));
      } catch (e) {
        emit(HomeFeedError(state.posts, e.toString()));
      }
    });
  }
}
