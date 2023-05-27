import 'package:social_academy/features/Splash/data/datasources/language_local_data_source.dart';
import 'package:social_academy/features/Splash/domain/repositories/language_repository.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  final LanguageLocalDataSource languageLocalDataSource;

  LanguageRepositoryImpl({required this.languageLocalDataSource});

  @override
  Future<void> changeLocale({required String locale}) =>
      languageLocalDataSource.changeLocale(locale: locale);

  @override
  Future<String> getSavedLang() => languageLocalDataSource.getSavedLang();
}
