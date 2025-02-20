part of 'profile_bloc.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  final Profile? profile;

  ProfileLoaded(this.profile);
}

final class ProfileError extends ProfileState {
  final String message;

  ProfileError({this.message = "Something went wrong! Please try again later."});
}
