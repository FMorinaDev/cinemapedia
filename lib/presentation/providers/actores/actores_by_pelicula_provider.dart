import 'package:cinemapedia/domain/entities/actores.dart';
import 'package:cinemapedia/presentation/providers/actores/actores_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actoresByPeliculaProvider = StateNotifierProvider<ActorByPeliculaNotifier, Map<String, List<Actor>>>((ref){
  final actorRepository = ref.watch(actorRepositoryProvider);

  return ActorByPeliculaNotifier(getActores: actorRepository.getActoresByPelicula);
});

typedef GetActorCallback = Future<List<Actor>>Function(String movieId); 

class ActorByPeliculaNotifier extends StateNotifier<Map<String,List<Actor>>>{
  final GetActorCallback getActores;
  ActorByPeliculaNotifier({
    required this.getActores
  }): super({});

  Future<void> cargarActores(String movieId) async{
    if (state[movieId] != null) return;

    final List<Actor> actores = await getActores(movieId);
    state = {...state, movieId: actores};
  }
}