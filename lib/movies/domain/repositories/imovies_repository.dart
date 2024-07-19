import '../entities/movies_entity.dart';

abstract class IMoviesRepository {
  Future<List<MoviesEntity>> getMovies();
}
