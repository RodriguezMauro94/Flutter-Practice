import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/respositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource moviesDatasource;

  MovieRepositoryImpl({required this.moviesDatasource});

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return moviesDatasource.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return moviesDatasource.getPopular(page: page);
  }
}
