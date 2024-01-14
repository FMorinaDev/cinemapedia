import 'package:cinemapedia/domain/datasources/peliculas_datasource.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/domain/repositories/peliculas_repositories.dart';

class PeliculaRepositoryImpl extends PeliculaRepository {
  final PeliculaDataSource dataSource;

  PeliculaRepositoryImpl(this.dataSource);

  @override
  Future<List<Pelicula>> getPeliculasActuales({int pagina = 1}) {
    return dataSource.getPeliculasActuales(pagina: pagina);
  }
  
  @override
  Future<List<Pelicula>> getPeliculasPopulares({int pagina = 1}) {
    return dataSource.getPeliculasPopulares(pagina: pagina);
  }
  
  @override
  Future<List<Pelicula>> getProximasPeliculas({int pagina = 1}) {
    return dataSource.getProximasPeliculas();
  }
  
  @override
  Future<List<Pelicula>> getPeliculasMejorCalificadas({int pagina = 1}) {
    return dataSource.getPeliculasMejorCalificadas();
  }
  
  @override
  Future<Pelicula> getPeliculaById(String id) {
    return dataSource.getPeliculaById(id);
  }
  
  @override
  Future<List<Pelicula>> buscarPeliculas(String query) {
    return dataSource.buscarPeliculas(query);
  }
}