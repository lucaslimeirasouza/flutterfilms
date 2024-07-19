class MoviesEntity {
  bool? adult;
  String? backdropPath;
  dynamic belongsToCollection;
  int? budget;
  List<GenreEntity>? genres;
  String? homepage;
  int? id;
  String? imdbId;
  List<String>? originCountry;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  List<ProductionCompanyEntity>? productionCompanies;
  List<ProductionCountryEntity>? productionCountries;
  DateTime? releaseDate;
  int? revenue;
  int? runtime;
  List<SpokenLanguageEntity>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MoviesEntity({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });
}

class GenreEntity {
  int? id;
  String? name;

  GenreEntity({
    this.id,
    this.name,
  });
}

class ProductionCompanyEntity {
  int? id;
  String? logoPath;
  String? name;
  String? originCountry;

  ProductionCompanyEntity({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });
}

class ProductionCountryEntity {
  String? iso31661;
  String? name;

  ProductionCountryEntity({
    this.iso31661,
    this.name,
  });
}

class SpokenLanguageEntity {
  String? englishName;
  String? iso6391;
  String? name;

  SpokenLanguageEntity({
    this.englishName,
    this.iso6391,
    this.name,
  });
}
