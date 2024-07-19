import '../entities/movies_entity.dart';

abstract class IMoviesUsecase {
  Future<List<MoviesEntity>> getMovies();
}
