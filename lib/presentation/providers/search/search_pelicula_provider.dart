import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/domain/repositories/peliculas_repositories.dart';
import 'package:cinemapedia/presentation/providers/peliculas/peliculas_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchPeliculasProvider = StateNotifierProvider<SearchPeliculasNotifier, List<Pelicula>>((ref) {
  final peliculaRepository = ref.read(peliculaRepositoryProvider);
  return SearchPeliculasNotifier(
    seachPeliculas: peliculaRepository.buscarPeliculas, 
    ref: ref
  );
});
typedef  SearchPelicuasCallback = Future<List<Pelicula>> Function(String query);

class SearchPeliculasNotifier extends StateNotifier<List<Pelicula>>{
  final SearchPelicuasCallback seachPeliculas;
  final Ref ref;
  SearchPeliculasNotifier({
    required this.seachPeliculas,
    required this.ref
  }): super([]);

  Future<List<Pelicula>> searchPeliculasByQuery(String query) async{
    final List<Pelicula> peliculas = await seachPeliculas(query);
    ref.read(searchQueryProvider.notifier).update((state) => query);
    state = peliculas;
    return peliculas;
  }
}