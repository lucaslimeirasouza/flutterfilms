import '../../../di.dart';
import '../../domain/repositories/imovies_repository.dart';
import '../models/movies_model.dart';
import '../providers/imovies_provider.dart';

class MoviesRepository extends IMoviesRepository {
  IMoviesProvider get _provider => di.get<IMoviesProvider>();

  @override
  Future<List<MoviesModel>> getMovies() async {
    return await _provider.getMovies();
  }
}
