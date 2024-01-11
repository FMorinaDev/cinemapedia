import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/presentation/providers/peliculas/peliculas_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final peliculaInfoProvider = StateNotifierProvider<PeliculaMapNotifier, Map<String, Pelicula>>((ref){
  final peliculaRepository = ref.watch(peliculaRepositoryProvider);

  return PeliculaMapNotifier(getMovie: peliculaRepository.getPeliculaById);
});

typedef GetMovieCallback = Future<Pelicula>Function(String movieId); 

class PeliculaMapNotifier extends StateNotifier<Map<String,Pelicula>>{
  final GetMovieCallback getMovie;
  PeliculaMapNotifier({
    required this.getMovie
  }): super({});

  Future<void> cargarPelicula(String movieId) async{
    if (state[movieId] != null) return;
    print('realizando peticion http');

    final movie = await getMovie(movieId);
    state = {...state, movieId: movie};
  }
}