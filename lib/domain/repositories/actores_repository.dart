import 'package:cinemapedia/domain/entities/actores.dart';

abstract class ActoresRepository{
  Future<List<Actor>> getActoresByPelicula(String peliculaId);
}