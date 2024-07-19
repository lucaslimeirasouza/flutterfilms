String? key = '9d0bcf06ff4c52cad0b584d8cc5180c9&page=1';
String? token =
    'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZDBiY2YwNmZmNGM1MmNhZDBiNTg0ZDhjYzUxODBjOSIsInN1YiI6IjY1ZTBkOTRjMmQ1MzFhMDE4NWMwOTc2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.XTH7i2ARaS2ZwmdTEr0riuIGtnrF4y0hwE9k8I5-l8A';

class DataProvider {
  static final DataProvider instance = DataProvider._injector();
  String? urlGetfilms =
      'https://api.themoviedb.org/3/movie/popular?api_key=$key';

  DataProvider._injector();

  factory DataProvider() {
    return instance;
  }
}
