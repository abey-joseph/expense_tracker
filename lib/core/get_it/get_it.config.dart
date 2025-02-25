// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/colors/colors.dart' as _i185;
import '../db/db.dart' as _i363;
import '../firebase/firebase_actions.dart' as _i601;
import '../hive/user_data_hive/user_data_hive.dart' as _i297;
import '../shared_prefs/prefs.dart' as _i25;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i25.Prefs>(() => _i25.Prefs());
    gh.singleton<_i601.FirebaseActions>(() => _i601.FirebaseActions());
    gh.singleton<_i297.UserDataHive>(() => _i297.UserDataHive());
    gh.lazySingleton<_i363.Db>(() => _i363.Db());
    gh.lazySingleton<_i185.UiColors>(() => _i185.UiColors());
    return this;
  }
}
