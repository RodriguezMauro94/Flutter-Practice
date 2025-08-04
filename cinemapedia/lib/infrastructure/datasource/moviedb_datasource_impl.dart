import 'package:cinemapedia/config/constants/enviroment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/mappers/movie_mapper.dart';
import 'package:cinemapedia/infrastructure/model/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasourceImpl extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Enviroment.theMovieDbKey,
        'language': 'es-ES',
      },
    ),
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get(
      "/movie/now_playing",
      queryParameters: {"page": page},
    );
    return jsonToMovies(response.data);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) async {
    final response = await dio.get(
      "/movie/popular",
      queryParameters: {"page": page},
    );
    return jsonToMovies(response.data);
  }

  List<Movie> jsonToMovies(Map<String, dynamic> json) {
    final movieDbResponse = MovieDbResponse.fromJson(json);
    return movieDbResponse.results
        .where((moviedb) => moviedb.posterPath != "no-poster")
        .map((moviedb) => MovieMapper.movieDbToEntity(moviedb))
        .toList();
  }
}
