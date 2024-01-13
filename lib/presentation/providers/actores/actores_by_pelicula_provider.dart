import 'package:cinemapedia/domain/entities/actores.dart';
import 'package:cinemapedia/presentation/providers/actores/actores_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actoresInfoProvider = StateNotifierProvider<ActorMapNotifier, Map<String, List<Actor>>>((ref){
  final actorRepository = ref.watch(actorRepositoryProvider);

  return ActorMapNotifier(getActores: actorRepository.getActoresByPelicula);
});

typedef GetActorCallback = Future<List<Actor>>Function(String movieId); 

class ActorMapNotifier extends StateNotifier<Map<String,List<Actor>>>{
  final GetActorCallback getActores;
  ActorMapNotifier({
    required this.getActores
  }): super({});

  Future<void> cargarActores(String movieId) async{
    if (state[movieId] != null) return;

    final List<Actor> actores = await getActores(movieId);
    state = {...state, movieId: actores};
  }
}