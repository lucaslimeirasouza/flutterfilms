import 'package:flutter_filmes/movies/domain/entities/movies_entity.dart';

class MoviesModel extends MoviesEntity {
  MoviesModel({
    adult,
    backdropPath,
    belongsToCollection,
    budget,
    genres,
    homepage,
    id,
    imdbId,
    originCountry,
    originalLanguage,
    originalTitle,
    overview,
    popularity,
    posterPath,
    productionCompanies,
    productionCountries,
    releaseDate,
    revenue,
    runtime,
    spokenLanguages,
    status,
    tagline,
    title,
    video,
    voteAverage,
    voteCount,
  }) : super(
          adult: adult,
          backdropPath: backdropPath,
          belongsToCollection: belongsToCollection,
          budget: budget,
          genres: genres,
          homepage: homepage,
          id: id,
          imdbId: imdbId,
          originCountry: originCountry,
          originalLanguage: originalLanguage,
          originalTitle: originalTitle,
          overview: overview,
          popularity: popularity,
          posterPath: posterPath,
          productionCompanies: productionCompanies,
          productionCountries: productionCountries,
          releaseDate: releaseDate,
          revenue: revenue,
          runtime: runtime,
          spokenLanguages: spokenLanguages,
          status: status,
          tagline: tagline,
          title: title,
          video: video,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );

  factory MoviesModel.fromMap(dynamic json) {
    if (json is! Map<String, dynamic>) {
      throw ArgumentError('Expected a Map<String, dynamic>.');
    }

    return MoviesModel(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      belongsToCollection: json['belongs_to_collection'],
      budget: json['budget'] as int?,
      genres: (json['genres'] as List?)
          ?.map((g) => GenreModel.fromMap(g as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      imdbId: json['imdb_id'] as String?,
      originCountry:
          (json['origin_country'] as List?)?.map((c) => c as String).toList(),
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: json['popularity'] as double?,
      posterPath: json['poster_path'] as String?,
      productionCompanies: (json['production_companies'] as List?)
          ?.map(
              (p) => ProductionCompanyModel.fromMap(p as Map<String, dynamic>))
          .toList(),
      productionCountries: (json['production_countries'] as List?)
          ?.map(
              (p) => ProductionCountryModel.fromMap(p as Map<String, dynamic>))
          .toList(),
      releaseDate: DateTime.tryParse(json['release_date'] as String),
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      spokenLanguages: (json['spoken_languages'] as List?)
          ?.map((l) => SpokenLanguageModel.fromMap(l as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: json['vote_average'] as double?,
      voteCount: json['vote_count'] as int?,
    );
  }
}

class GenreModel extends GenreEntity {
  GenreModel({
    id,
    name,
  }) : super(
          id: id,
          name: name,
        );

  factory GenreModel.fromMap(Map<String, dynamic> json) {
    return GenreModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );
  }
}

class ProductionCompanyModel extends ProductionCompanyEntity {
  ProductionCompanyModel({
    id,
    logoPath,
    name,
    originCountry,
  }) : super(
          id: id,
          logoPath: logoPath,
          name: name,
          originCountry: originCountry,
        );

  factory ProductionCompanyModel.fromMap(Map<String, dynamic> json) {
    return ProductionCompanyModel(
      id: json['id'] as int?,
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String?,
      originCountry: json['origin_country'] as String?,
    );
  }
}

class ProductionCountryModel extends ProductionCountryEntity {
  ProductionCountryModel({
    iso31661,
    name,
  }) : super(
          iso31661: iso31661,
          name: name,
        );

  factory ProductionCountryModel.fromMap(Map<String, dynamic> json) {
    return ProductionCountryModel(
      iso31661: json['iso_3166_1'] as String?,
      name: json['name'] as String?,
    );
  }
}

class SpokenLanguageModel extends SpokenLanguageEntity {
  SpokenLanguageModel({
    englishName,
    iso6391,
    name,
  }) : super(
          englishName: englishName,
          iso6391: iso6391,
          name: name,
        );

  factory SpokenLanguageModel.fromMap(Map<String, dynamic> json) {
    return SpokenLanguageModel(
      englishName: json['english_name'] as String?,
      iso6391: json['iso_639_1'] as String?,
      name: json['name'] as String?,
    );
  }
}
