part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

final class ProfileInitialize extends ProfileEvent {}

final class ProfileLoadPage extends ProfileEvent {
  final Profile profile;

  ProfileLoadPage(this.profile);
}
