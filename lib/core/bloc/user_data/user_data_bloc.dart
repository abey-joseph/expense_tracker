import 'package:bloc/bloc.dart';
import 'package:expense_tracker/core/get_it/get_it.dart';
import 'package:expense_tracker/core/hive/user_data_hive/user_data_hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';
part 'user_data_bloc.freezed.dart';

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  UserDataBloc() : super(userDataInitial()) {
    on<userDataStarted>((event, emit) {
      if (getIt<UserDataHive>().isNeedBudget()) {
        emit(userDataLoaded(budget: getIt<UserDataHive>().getBudget()));
      } else {
        emit(userDataLoaded(budget: 0));
      }
    });
  }
}
