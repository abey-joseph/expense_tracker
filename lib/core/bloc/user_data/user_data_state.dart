part of 'user_data_bloc.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.userDataInitial() = userDataInitial;
  const factory UserDataState.userDataLoaded({required int budget}) =
      userDataLoaded;
}
