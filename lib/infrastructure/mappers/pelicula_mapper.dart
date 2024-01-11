import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/pelicula_moviedb.dart';

class PeliculaMapper {
  static Pelicula movieDBToEntity(PeliculaMovieDB pelicula) => Pelicula(
    adulto: pelicula.adult,
    fondoPath: (pelicula.backdropPath != '') 
      ? 'https://image.tmdb.org/t/p/w500/${pelicula.backdropPath}' 
      : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    generoIds: pelicula.genreIds.map((e) => e.toString()).toList(),
    id: pelicula.id,
    lenguajeOriginal: pelicula.originalLanguage,
    tituloOriginal: pelicula.originalTitle,
    descripcionGeneral: pelicula.overview,
    popularidad: pelicula.popularity,
    posterPath: (pelicula.posterPath != '') 
      ? 'https://image.tmdb.org/t/p/w500/${pelicula.posterPath}' 
      : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    fechaLanzamiento: pelicula.releaseDate,
    titulo: pelicula.title,
    video: pelicula.video,
    promedioVotos: pelicula.voteAverage,
    cantidadVotos: pelicula.voteCount
  );

  static Pelicula movieDetailsToEntity(MovieDetails pelicula ) =>Pelicula(
    adulto: pelicula.adult,
    fondoPath: (pelicula.backdropPath != '') 
      ? 'https://image.tmdb.org/t/p/w500/${pelicula.backdropPath}' 
      : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    generoIds: pelicula.genres.map((e) => e.name).toList(),
    id: pelicula.id,
    lenguajeOriginal: pelicula.originalLanguage,
    tituloOriginal: pelicula.originalTitle,
    descripcionGeneral: pelicula.overview,
    popularidad: pelicula.popularity,
    posterPath: (pelicula.posterPath != '') 
      ? 'https://image.tmdb.org/t/p/w500/${pelicula.posterPath}' 
      : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    fechaLanzamiento: pelicula.releaseDate,
    titulo: pelicula.title,
    video: pelicula.video,
    promedioVotos: pelicula.voteAverage,
    cantidadVotos: pelicula.voteCount
  );
}
