import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'movies/data/providers/imovies_provider.dart';
import 'movies/data/providers/movies_provider.dart';
import 'movies/data/repositories/movies_repository.dart';
import 'movies/domain/repositories/imovies_repository.dart';

final di = GetIt.instance;

void setupDi() {
  _repositories();
  _providers();
}

void _repositories() {
  di.registerLazySingleton<IMoviesRepository>(() => MoviesRepository());
}

void _providers() {
  di.registerFactory<Dio>(() => Dio());
  di.registerFactory<IMoviesProvider>(() => MoviesProvider());
}
