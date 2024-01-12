import 'package:cinemapedia/domain/entities/actores.dart';

abstract class ActoresDatasource {
 Future<List<Actor>> getActoresByPelicula(String peliculaId);
}