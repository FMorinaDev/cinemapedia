import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PeliculaPosterLink extends StatelessWidget {
  final Pelicula pelicula;
  const PeliculaPosterLink({super.key, required this.pelicula});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/movie/${pelicula.id}'),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FadeIn(
          child: Image.network(pelicula.posterPath),
        ),
      ),
    );
  }
}