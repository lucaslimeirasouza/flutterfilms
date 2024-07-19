//Chave da API: 9d0bcf06ff4c52cad0b584d8cc5180c9
//Token de Leitura da API: eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZDBiY2YwNmZmNGM1MmNhZDBiNTg0ZDhjYzUxODBjOSIsInN1YiI6IjY1ZTBkOTRjMmQ1MzFhMDE4NWMwOTc2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.XTH7i2ARaS2ZwmdTEr0riuIGtnrF4y0hwE9k8I5-l8A
//Requisicao: https://api.themoviedb.org/3/movie/550?api_key=
import 'package:dio/dio.dart';

import '../../../di.dart';
import '../../../provider.dart';
import '../models/movies_model.dart';
import 'imovies_provider.dart';

class MoviesProvider extends IMoviesProvider {
  Dio get _dio => di.get<Dio>();
  final String? urlGetfilms = DataProvider.instance.urlGetfilms;

  Future<List<MoviesModel>> getMovies() async {
    try {
      final response = await _dio.get('$urlGetfilms');
      if (response.statusCode == 204 || response.statusCode == 503) {
        throw Exception();
      }

      final List<dynamic> result = response.data["results"];

      return result.map((x) => MoviesModel.fromMap(x)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
