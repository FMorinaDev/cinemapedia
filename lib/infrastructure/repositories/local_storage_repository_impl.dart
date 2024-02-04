import 'package:cinemapedia/domain/datasources/local_storage_datasource.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/domain/repositories/local_storage_repository.dart';

class LocalStoragerepositoryImpl extends LocalStorageRepository{
  final LocalStorageDatasource datasource;
  LocalStoragerepositoryImpl(this.datasource);
  @override
  Future<bool> existePeliculaFavorita(int peliculaId) {
    return datasource.existePeliculaFavorita(peliculaId);
  }

  @override
  Future<List<Pelicula>> loadPeliculas({int limit = 10, offset = 0}) {
    return datasource.loadPeliculas(limit: limit, offset: offset);
  }

  @override
  Future<void> toggleFavorite(Pelicula pelicula) {
    return datasource.toggleFavorite(pelicula);
  }

}