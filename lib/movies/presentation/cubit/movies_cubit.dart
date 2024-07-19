import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/movies_entity.dart';
import '../../domain/usecases/imovies_usecase.dart';
import '../../domain/usecases/movies_usecase.dart';
import 'movies_states.dart';

class MoviesCubit extends Cubit<MoviesState> {
  IMoviesUsecase usecase = MoviesUsecase();
  MoviesCubit() : super(InitialMoviesState());

  List<MoviesEntity> getListMovies = [];
  late MoviesEntity getMovieDetail;

  Future<void> getMovies() async {
    try {
      emit(LoadingMoviesState());

      getListMovies = await usecase.getMovies();

      emit(HomepageMoviesState(moviesList: getListMovies));
    } catch (e) {
      emit(HomepageMoviesState(
          hasError: true, message: 'Erro ao obter lista de filmes'));
    }
  }

  Future<void> getDetails(MoviesEntity itemMovie) async {
    try {
      emit(LoadingMoviesState());
      getMovieDetail = itemMovie;
      emit(DetailMoviesState(movieDetail: getMovieDetail));
    } catch (e) {
      emit(DetailMoviesState(hasError: true, message: 'Filme não encontrado'));
    }
  }
}
