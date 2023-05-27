// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:social_academy/features/Splash/presentation/manger/locale_cubit/locale_cubit.dart';
// import 'core/locale/app_localizations_setup.dart';
// class SocailAcademy extends StatelessWidget {
//   const SocailAcademy({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: const [
//         BlocProvider(
//           create: (_) => getIt<BottomNavCubit>(),
//         ),
//         BlocProvider(
//           create: (context) => getIt<LocaleCubit>()..getSavedLang(),
//         ),
//         BlocProvider(
//           create: (context) {
//             return FeaturedBooksCubit(
//               FetchFeaturedBooksUseCase(
//                 getIt.get<HomeRepoImpl>(),
//               ),
//             );
//           },
//         ),
//         BlocProvider(
//           create: (context) {
//             return NewestBooksCubit(
//               FetchNewestdBooksUseCase(
//                 getIt.get<HomeRepoImpl>(),
//               ),
//             );
//           },
//         )
//       ],
//       child: BlocBuilder<LocaleCubit, LocaleState>(
//         buildWhen: (previousState, currentState) =>
//         previousState != currentState,
//         builder: (_, localeState) {
//           return MaterialApp(
//             locale: localeState.locale,
//            // onGenerateRoute: AppRoutes.onGenerateRoute,
//             supportedLocales: AppLocalizationsSetup.supportedLocales,
//             localeResolutionCallback:
//             AppLocalizationsSetup.localeResolutionCallback,
//             localizationsDelegates:
//             AppLocalizationsSetup.localizationsDelegates,
//             debugShowCheckedModeBanner: false,
//             theme: ThemeData(
//               textTheme: const TextTheme().copyWith(
//                   displayLarge: const TextStyle(fontSize: 12)
//               ),
//               primarySwatch: Colors.blue,
//
//               fontFamily: localeState.locale.languageCode == "ar"
//                   ? 'Hacen Tunisia'
//                   : "Cairo-Bold",
//             ),
//
//             // ThemeData.dark().copyWith(
//             //   scaffoldBackgroundColor: kPrimaryColor,
//             //   textTheme:
//             //       GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
//             // ),
//           );
//         },
//       ),
//     );
//   }
// }
