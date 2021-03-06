// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i16;
import 'application/cards/cards_bloc.dart' as _i18;
import 'domain/auth/i_auth_repository.dart' as _i12;
import 'domain/card/i_card_repository.dart' as _i14;
import 'infrastructure/auth/auth_local_repository.dart' as _i10;
import 'infrastructure/auth/auth_remote_data_source.dart' as _i4;
import 'infrastructure/auth/auth_repository.dart' as _i13;
import 'infrastructure/card/card_local_data_source.dart' as _i11;
import 'infrastructure/card/card_remote_data_source.dart' as _i5;
import 'infrastructure/card/cards_repository.dart' as _i15;
import 'infrastructure/core/api.dart' as _i3;
import 'infrastructure/core/injectable_modules.dart' as _i19;
import 'infrastructure/core/network_info.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final infrastructureInjectableModules = _$InfrastructureInjectableModules();
  gh.lazySingleton<_i3.Api>(() => _i3.Api());
  gh.lazySingleton<_i4.AuthRemoteDataSource>(
      () => _i4.AuthRemoteDataSource(get<_i3.Api>()));
  gh.lazySingleton<_i5.CardRemoteDataSource>(
      () => _i5.CardRemoteDataSource(get<_i3.Api>()));
  gh.lazySingleton<_i6.Connectivity>(
      () => infrastructureInjectableModules.connectivity);
  gh.lazySingleton<_i7.FlutterSecureStorage>(
      () => infrastructureInjectableModules.secureStorage);
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfo(get<_i6.Connectivity>()));
  await gh.lazySingletonAsync<_i9.SharedPreferences>(
      () => infrastructureInjectableModules.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i10.AuthLocaleDataSource>(
      () => _i10.AuthLocaleDataSource(get<_i7.FlutterSecureStorage>()));
  gh.lazySingleton<_i11.CardLocalDataSource>(
      () => _i11.CardLocalDataSource(get<_i9.SharedPreferences>()));
  gh.lazySingleton<_i12.IAuthRepository>(() => _i13.AuthRepository(
      get<_i4.AuthRemoteDataSource>(), get<_i10.AuthLocaleDataSource>()));
  gh.lazySingleton<_i14.ICardRepository>(() => _i15.CardRepository(
      get<_i5.CardRemoteDataSource>(),
      get<_i8.NetworkInfo>(),
      get<_i11.CardLocalDataSource>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(get<_i12.IAuthRepository>()));
  gh.factory<_i17.AuthBloc>(() =>
      _i17.AuthBloc(get<_i14.ICardRepository>(), get<_i12.IAuthRepository>()));
  gh.factory<_i18.CardsBloc>(() =>
      _i18.CardsBloc(get<_i14.ICardRepository>(), get<_i12.IAuthRepository>()));
  return get;
}

class _$InfrastructureInjectableModules
    extends _i19.InfrastructureInjectableModules {}
