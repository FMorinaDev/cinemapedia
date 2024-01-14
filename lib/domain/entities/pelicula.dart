class Pelicula {
  final bool adulto;
  final String fondoPath;
  final List<String> generoIds;
  final int id;
  final String lenguajeOriginal;
  final String tituloOriginal;
  final String descripcionGeneral;
  final double popularidad;
  final String posterPath;
  final DateTime? fechaLanzamiento;
  final String titulo;
  final bool video;
  final double promedioVotos;
  final int cantidadVotos;

  Pelicula({
    required this.adulto,
    required this.fondoPath,
    required this.generoIds,
    required this.id,
    required this.lenguajeOriginal,
    required this.tituloOriginal,
    required this.descripcionGeneral,
    required this.popularidad,
    required this.posterPath,
    this.fechaLanzamiento,
    required this.titulo,
    required this.video,
    required this.promedioVotos,
    required this.cantidadVotos
  });
}