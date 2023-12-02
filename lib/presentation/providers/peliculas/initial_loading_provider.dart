import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final peliculasSlider = ref.watch(peliculasSlidesshowProvider).isEmpty;
  final peliculasPopulares = ref.watch(getPeliculasPopularesProvider).isEmpty;
  final proximasPeliculas = ref.watch(getProximasPeliculasProvider).isEmpty;
  final peliculasMejorCalificadas = ref.watch(getPeliculasMejorCalificadasProvider).isEmpty;

  if (peliculasSlider || peliculasPopulares || proximasPeliculas || peliculasMejorCalificadas)  return true;
  
  return false;
});