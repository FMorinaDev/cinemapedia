import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/pelicula_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Este repository es de solo lectura
final peliculaRepositoryProvider = Provider((ref) {
  return PeliculaRepositoryImpl(MoviedbDatasource());
});