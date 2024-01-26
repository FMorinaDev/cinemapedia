import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/domain/repositories/local_storage_repository.dart';
import 'package:cinemapedia/presentation/providers/storage/local_storage_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoritasPelicuasProvider = StateNotifierProvider<StoragePeliculasNotifier, Map<int, Pelicula>>((ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StoragePeliculasNotifier(localStorageRepository: localStorageRepository);
});


class StoragePeliculasNotifier extends StateNotifier<Map<int, Pelicula>>{
  int page = 0;
  final LocalStorageRepository localStorageRepository;
  StoragePeliculasNotifier({ required this.localStorageRepository}) : super({});

  Future<void> loadNextPage() async{
    final peliculas = await localStorageRepository.loadPeliculas(offset: page * 10);
    page++;
    final tempPeliculaMap = <int, Pelicula>{};
    for (var pelicula in peliculas) {
      tempPeliculaMap[pelicula.id] = pelicula;
    }
    state = {...state, ...tempPeliculaMap};
  }

}