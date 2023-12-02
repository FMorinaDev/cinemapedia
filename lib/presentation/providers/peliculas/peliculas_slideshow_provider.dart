import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final peliculasSlidesshowProvider = Provider<List<Pelicula>>((ref) {
  final nuevasPelicuas = ref.watch(getPeliculasActualesProvider);

  if (nuevasPelicuas.isEmpty) {
    return [];
  }
  return nuevasPelicuas.sublist(0,6);
});