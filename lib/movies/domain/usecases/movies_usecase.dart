import '../../../di.dart';
import '../entities/movies_entity.dart';
import '../repositories/imovies_repository.dart';
import 'imovies_usecase.dart';

class MoviesUsecase extends IMoviesUsecase {
  IMoviesRepository _repository = di.get<IMoviesRepository>();

  @override
  Future<List<MoviesEntity>> getMovies() async {
    List<MoviesEntity> result = await _repository.getMovies();

    return result;
  }
}
