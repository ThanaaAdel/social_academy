// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:social_academy/features/Splash/data/datasources/language_local_data_source.dart';
// import 'package:social_academy/features/Splash/data/datasources/language_local_data_source_impl.dart';
// import 'package:social_academy/features/Splash/data/repositories/language_repository_impl.dart';
// import 'package:social_academy/features/Splash/domain/repositories/language_repository.dart';
// import 'package:social_academy/features/Splash/domain/usecases/change_locale_use_case.dart';
// import 'package:social_academy/features/Splash/domain/usecases/get_saved_lang_use_case.dart';
// import 'package:social_academy/features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
// import 'package:social_academy/features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
// import '../api_service.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// final getIt = GetIt.instance;
// Future<void> init() async {
//   getIt.registerSingleton<ApiService>(
//     ApiService(
//       Dio(),
//     ),
//   );
//   getIt.registerSingleton<HomeRepoImpl>(
//     HomeRepoImpl(
//       homeLocalDataSource: HomeLocalDataSourceImpl(),
//       homeRemoteDataSource: HomeRemoteDataSourceImpl(
//         getIt.get<ApiService>(),
//       ),
//     ),
//   );
//   getIt.registerFactory<LocaleCubit>(() => LocaleCubit(
//       changeLocaleUseCase: getIt.call(), getSavedLangUseCase: getIt.call()));
//
//   getIt.registerLazySingleton<GetSavedLangUseCase>(
//       () => GetSavedLangUseCase(languageRepository: getIt.call()));
//   getIt.registerLazySingleton<ChangeLocaleUseCase>(
//       () => ChangeLocaleUseCase(languageRepository: getIt.call()));
//
//   getIt.registerLazySingleton<LanguageRepository>(
//       () => LanguageRepositoryImpl(languageLocalDataSource: getIt.call()));
//
//   getIt.registerLazySingleton<LanguageLocalDataSource>(
//     () => LanguageLocalDataSourceImpl(sharedPreferences: getIt()),
//   );
//   getIt.registerFactory<BottomNavCubit>(() => BottomNavCubit());
//
//   //! External
//   final sharedPreferences = await SharedPreferences.getInstance();
//   getIt.registerLazySingleton(() => sharedPreferences);
// }
