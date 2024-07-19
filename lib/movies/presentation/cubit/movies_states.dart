// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_filmes/movies/domain/entities/movies_entity.dart';

abstract class MoviesState {
  final bool hasError;
  final String message;
  MoviesState({
    this.hasError = false,
    this.message = '',
  });
}

class InitialMoviesState extends MoviesState {}

class LoadingMoviesState extends MoviesState {}

class LoadedMoviesState extends MoviesState {
  final String pass;

  LoadedMoviesState(this.pass);
}

class ErrorMoviesState extends MoviesState {
  final String message;

  ErrorMoviesState(this.message);
}

class HomepageMoviesState extends MoviesState {
  List<MoviesEntity>? moviesList;
  HomepageMoviesState({
    super.hasError,
    super.message,
    this.moviesList,
  });
}

class FavoriteMoviesState extends MoviesState {}

class DetailMoviesState extends MoviesState {
  MoviesEntity? movieDetail;
  DetailMoviesState({
    super.hasError,
    super.message,
    this.movieDetail,
  });
}
