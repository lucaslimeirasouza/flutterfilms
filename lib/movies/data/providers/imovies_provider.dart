import '../models/movies_model.dart';

abstract class IMoviesProvider {
  Future<List<MoviesModel>> getMovies();
}
