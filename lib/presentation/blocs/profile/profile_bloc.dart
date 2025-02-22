import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventrift/data/sources/database.dart';
import 'package:ventrift/data/sources/models.dart';
import 'package:ventrift/domain/repositories/auth_repo.dart';
import 'package:ventrift/domain/repositories/profile_repo.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthRepo _authRepo;
  final ProfileRepo _profileRepo;

  ProfileBloc({required AuthRepo authRepo, required ProfileRepo profileRepo})
      : _authRepo = authRepo,
        _profileRepo = profileRepo,
        super(ProfileInitial()) {
    on<ProfileInitialize>((event, emit) async {
      emit(ProfileLoading());

      try {
        final profile = await _profileRepo.getProfile(_authRepo.auth.currentUser!.id);
        emit(ProfileLoaded(profile));
      } catch (e) {
        emit(ProfileError(message: "Something went wrong! Please try again later."));
      }
    });

    on<ProfileLoadPage>((event, emit) async {
      emit(ProfileLoading());

      try {
        final profile = await _profileRepo.getProfileWithRelations(event.profile);
        emit(ProfileWithRelationsLoaded(profile));
      } catch (e) {
        emit(ProfileError(message: "Something went wrong! Please try again later."));
      }
    });
  }
}
