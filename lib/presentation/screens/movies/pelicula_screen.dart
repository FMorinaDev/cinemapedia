import 'dart:ffi';

import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
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
    ref.read(actoresInfoProvider.notifier).cargarActores(widget.movieId);
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
          _CustomSliverAppBar(pelicula: pelicula),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) => _PeliculaDetalle(pelicula: pelicula),
            childCount: 1
          ))
        ],
      ),
    );
  }
}

class _PeliculaDetalle extends StatelessWidget {
  final Pelicula pelicula;
  const _PeliculaDetalle({
    required this.pelicula
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  pelicula.posterPath,
                  width: size.width * 0.3,
                ),
              ),
              const SizedBox(width: 10,),
              SizedBox(
                width: (size.width - 40) * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pelicula.titulo, style: textStyle.titleLarge),
                    Text(pelicula.descripcionGeneral)
                  ],
                ),
              )
            ],
          )
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
            children: [
              ...pelicula.generoIds.map((genero) => Container(
                margin: const EdgeInsets.only(right: 10),
                child: Chip(
                  label: Text(genero),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ))
            ],
          ),
        ),
        _ActoresByPelicula(peliculaId: pelicula.id.toString(),),
        const SizedBox(height: 30,)
      ],
    );
  }
}

class _ActoresByPelicula extends ConsumerWidget {
  final String peliculaId;
  const _ActoresByPelicula({required this.peliculaId});

  @override
  Widget build(BuildContext context, ref) {
    final actoresByPelicula = ref.watch(actoresInfoProvider);
    if (actoresByPelicula[peliculaId] == null) {
      return const CircularProgressIndicator(strokeWidth: 2,);
    }
    final actores = actoresByPelicula[peliculaId]!;
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: actores.length,
        itemBuilder: (context, index){
          final actor = actores[index];
          return Container(
            padding: const EdgeInsets.all(4),
            width: 135,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeIn(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      actor.perfilPath,
                      height: 180,
                      width: 135,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Text(actor.nombre, maxLines: 2),
                Text(
                  actor.papel ?? '', 
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis
                  ),
                ),
              ],
            ),
          );
        },
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
      actions: [
        IconButton(onPressed: (){

        }, icon: true ? const Icon(Icons.favorite_border) : const Icon(Icons.favorite_rounded, color: Colors.red,))
      ],
      backgroundColor: Colors.black,
      expandedHeight: size.height * 0.7,
      foregroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        /* title: Text(
          pelicula.titulo,
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.start,
        ), */
        background: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                pelicula.posterPath,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null) return const SizedBox();
                  return FadeIn(child: child);
                },
              ),
            ),
            const _DecoratedBox(begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: [ 0.8, 1.0], colorBegin: Colors.transparent, colorEnd: Colors.black54,),
            const _DecoratedBox(begin: Alignment.topRight, end: Alignment.bottomLeft, stops: [ 0.0, 0.2], colorBegin: Colors.black54, colorEnd: Colors.transparent,),
            const _DecoratedBox(begin: Alignment.topLeft, end: Alignment.bottomRight, stops: [ 0.0, 0.2], colorBegin: Colors.black45, colorEnd: Colors.transparent,),
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

class _DecoratedBox extends StatelessWidget {
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<double> stops;
  final Color colorBegin;
  final Color colorEnd;
  const _DecoratedBox({
    super.key, required this.begin, required this.end , required this.stops, required this.colorBegin, required this.colorEnd,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin,
            end: end,
            stops: stops,
            colors: [
              colorBegin, colorEnd
            ]
          )
        ),
      ),
    );
  }
}