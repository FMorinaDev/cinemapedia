import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/peliculas_datasource.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/infrastructure/mappers/pelicula_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends PeliculaDataSource{
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.movieDbKey,
        'language': 'es-MX'
      })
  );

  List<Pelicula> _jsonToMovies(Map<String, dynamic> json){
    final movieDBResponse = MovieDbResponse.fromJson(json);
    final List<Pelicula> peliculas = movieDBResponse.results.map(
      (pelicula) => PeliculaMapper.movieDBToEntity(pelicula)
    ).toList();
    return peliculas;
  }

  @override
  Future<List<Pelicula>> getPeliculasActuales({int pagina = 1}) async{
    final response = await dio.get('/movie/now_playing',queryParameters: {
      'page': pagina
    });
    return _jsonToMovies(response.data);
  }
  
  @override
  Future<List<Pelicula>> getPeliculasPopulares({int pagina = 1}) async {
    final response = await dio.get('/movie/popular',queryParameters: {
      'page': pagina
    });
    return _jsonToMovies(response.data);
  }
  
  @override
  Future<List<Pelicula>> getProximasPeliculas({int pagina = 1}) async{
    final response = await dio.get('/movie/upcoming',queryParameters: {
      'page': pagina
    });
    return _jsonToMovies(response.data);
  }
  
  @override
  Future<List<Pelicula>> getPeliculasMejorCalificadas({int pagina = 1}) async{
    final response = await dio.get('/movie/top_rated',queryParameters: {
      'page': pagina
    });
    return _jsonToMovies(response.data);
  }
  
  @override
  Future<Pelicula> getPeliculaById(String id) async{
    final response = await dio.get('/movie/$id');
    if (response.statusCode != 200) {
      throw Exception('Pelicula con el id: $id no se encontro');
    }
    final peliculaDB = MovieDetails.fromJson(response.data);

    return PeliculaMapper.movieDetailsToEntity(peliculaDB);
  }

}