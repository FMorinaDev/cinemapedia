import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/presentation/providers/peliculas/peliculas_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getPeliculasActualesProvider = StateNotifierProvider<PeliculasNotifier, List<Pelicula>>((ref) {
  final fetchMasPeliculas = ref.watch(peliculaRepositoryProvider).getPeliculasActuales;
  return PeliculasNotifier(fetchMasPeliculas: fetchMasPeliculas);
});

final getPeliculasPopularesProvider = StateNotifierProvider<PeliculasNotifier, List<Pelicula>>((ref) {
  final fetchMasPeliculas = ref.watch(peliculaRepositoryProvider).getPeliculasPopulares;
  return PeliculasNotifier(fetchMasPeliculas: fetchMasPeliculas);
});
final getProximasPeliculasProvider = StateNotifierProvider<PeliculasNotifier, List<Pelicula>>((ref) {
  final fetchMasPeliculas = ref.watch(peliculaRepositoryProvider).getProximasPeliculas;
  return PeliculasNotifier(fetchMasPeliculas: fetchMasPeliculas);
});
final getPeliculasMejorCalificadasProvider = StateNotifierProvider<PeliculasNotifier, List<Pelicula>>((ref) {
  final fetchMasPeliculas = ref.watch(peliculaRepositoryProvider).getPeliculasMejorCalificadas;
  return PeliculasNotifier(fetchMasPeliculas: fetchMasPeliculas);
});

typedef PeliculaCallback = Future<List<Pelicula>> Function({int pagina});

class PeliculasNotifier  extends StateNotifier<List<Pelicula>>{
  int paginaActual = 0;
  bool isLoading = false;
  PeliculaCallback fetchMasPeliculas;

  PeliculasNotifier({required this.fetchMasPeliculas}): super([]);

  Future<void> loadNextPage()async {
    if(isLoading) return;

    isLoading = true;
    paginaActual++;
    final List<Pelicula> peliculas = await fetchMasPeliculas(pagina: paginaActual);
    state = [...state, ...peliculas];
    await Future.delayed(const Duration(milliseconds: 300));
    isLoading = false;
  }
}