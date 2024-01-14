import 'package:cinemapedia/domain/entities/pelicula.dart';

abstract class PeliculaDataSource{
  Future<List<Pelicula>> getPeliculasActuales({int pagina = 1});

  Future<List<Pelicula>> getPeliculasPopulares({int pagina = 1});

  Future<List<Pelicula>> getProximasPeliculas({int pagina = 1});

  Future<List<Pelicula>> getPeliculasMejorCalificadas({int pagina = 1});

  Future<Pelicula> getPeliculaById(String id);

  Future<List<Pelicula>> buscarPeliculas(String query);
}