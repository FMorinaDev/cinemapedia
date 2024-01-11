import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/presentation/providers/peliculas/pelicula_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class PeliculaScreen extends ConsumerStatefulWidget {
  static const name = 'peliculaScreen';
  final String movieId;
  const PeliculaScreen({super.key, required this.movieId});

  @override
  PeliculaScreenState createState() => PeliculaScreenState();
}

class PeliculaScreenState extends ConsumerState<PeliculaScreen> { //Gracias al consumerState tenemos acceso al ref
  
  
  @override
  void initState() {
    super.initState();
    ref.read(peliculaInfoProvider.notifier).cargarPelicula(widget.movieId);
  }
  @override
  Widget build(BuildContext context) {
    final Pelicula? pelicula = ref.watch(peliculaInfoProvider)[widget.movieId];
    if (pelicula == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator( strokeWidth: 2)));
    }
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          _CustomSliverAppBar(pelicula: pelicula)
        ],
      ),
    );
  }
}

class _CustomSliverAppBar extends StatelessWidget {
  final Pelicula pelicula;
  const _CustomSliverAppBar({
    required this.pelicula
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return 
    SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: size.height * 0.7,
      foregroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        title: Text(
          pelicula.titulo,
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.start,
        ),
        background: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                pelicula.posterPath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [ 0.7, 1.0],
                    colors: [
                      Colors.transparent, Colors.black87
                    ]
                  )
                ),
              ),
            ),
             const SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    stops: [ 0.0, 0.3],
                    colors: [
                      Colors.black87,
                      Colors.transparent 
                    ]
                  )
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}