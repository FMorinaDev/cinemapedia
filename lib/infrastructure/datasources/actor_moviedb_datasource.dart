import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/actores_datasource.dart';
import 'package:cinemapedia/domain/entities/actores.dart';
import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/creditos_response.dart';
import 'package:dio/dio.dart';

class ActorMovieDbDatasource extends ActoresDatasource{
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.movieDbKey,
        'language': 'es-MX'
      })
  );
  @override
  Future<List<Actor>> getActoresByPelicula(String peliculaId) async {
    final result = await dio.get('/movie/$peliculaId/credits');
    final creditosResponde = CreditosResponse.fromJson(result.data);
    print(result);
    List<Actor> actores = creditosResponde.cast.map(
      (cast) => ActorMapper.castToEntity(cast)
    ).toList();
    return actores;
  }

}