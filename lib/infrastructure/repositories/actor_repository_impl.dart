import 'package:cinemapedia/domain/datasources/actores_datasource.dart';
import 'package:cinemapedia/domain/entities/actores.dart';
import 'package:cinemapedia/domain/repositories/actores_repository.dart';

class ActorRepositoryImpl extends ActoresRepository{
  final ActoresDatasource datasource;
  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActoresByPelicula(String peliculaId) {
    return datasource.getActoresByPelicula(peliculaId);
  }

}