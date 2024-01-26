import 'package:cinemapedia/domain/entities/pelicula.dart';

abstract class LocalStorageDatasource{
  Future<void> toggleFavorite(Pelicula pelicula);
  Future<bool> existePeliculaFavorita(int peliculaId);
  Future<List<Pelicula>> loadPeliculas({int limit = 10, offset = 0});
}