import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/config/helpers/helpers.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class PeliculaHorizontalListview extends StatefulWidget {
  final List<Pelicula> peliculas;
  final String? titulo;
  final String? subTitulo;

  final VoidCallback? loadNextPage;

  const PeliculaHorizontalListview({super.key, required this.peliculas, this.titulo, this.subTitulo, this.loadNextPage});

  @override
  State<PeliculaHorizontalListview> createState() => _PeliculaHorizontalListviewState();
}

class _PeliculaHorizontalListviewState extends State<PeliculaHorizontalListview> {

  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (widget.loadNextPage == null) return;

      if (scrollController.position.pixels + 200 >= scrollController.position.maxScrollExtent) {
        print('cargar siguientes peliculas');
        widget.loadNextPage!();
      }
    });
  }
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double aspectRatio = 1/2;
    return SizedBox(
      height: (screenWidth * aspectRatio),
      child: Column(
        children: [
          if(widget.titulo != null || widget.subTitulo != null)
          _Titulo(titulo: widget.titulo, subTitulo: widget.subTitulo,),

          Expanded(
            child: ListView.builder(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: widget.peliculas.length,
              itemBuilder: (context, index) {
                final pelicula = widget.peliculas[index];
                return FadeInRight(child: _Slide(pelicula: pelicula));
              },
            ),
          )
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Pelicula pelicula;
  const _Slide({required this.pelicula});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double aspectRatio = 1/3.9;
    final estiloTitulo = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* Imagen */
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                pelicula.posterPath,
                fit: BoxFit.cover,
                width: screenWidth > 700 ? 250 : 150,
                height: screenWidth * aspectRatio,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null) {
                    return const CircularProgressIndicator();
                  }
                  return GestureDetector(
                    onTap: () => context.push('/movie/${pelicula.id}'),
                    child: FadeInRight(child: child)
                  );
                },
              ),
            ),
          const SizedBox(height: 5,),
          SizedBox(
            width: 150,
            child: Text(
              pelicula.titulo,
              maxLines: 2,
              style: estiloTitulo.bodySmall,
            ),
          ),
          SizedBox(
            width: screenWidth > 700 ? 250 : 150,
            child: Row(
              children: [
                Icon(Icons.star_half_outlined, color: Colors.yellow.shade800,),
                const SizedBox(width: 3,),
                Text('${pelicula.promedioVotos}', style: estiloTitulo.bodyMedium?.copyWith(color: Colors.yellow.shade800),),
                const Spacer(),
                Text(Helpers.numero(pelicula.popularidad), style: estiloTitulo.bodySmall,),
                const SizedBox(width: 10),
                /* Text('${pelicula.popularidad}', style: estiloTitulo.bodySmall,), */
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  final String? titulo;
  final String? subTitulo;
  const _Titulo({this.titulo, this.subTitulo});

  @override
  Widget build(BuildContext context) {
    final estiloTitulo = Theme.of(context).textTheme.titleLarge;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if(titulo != null)
          Text(titulo!, style: estiloTitulo,),

          const Spacer(),
          if(subTitulo != null)
          FilledButton.tonal(
            style: const ButtonStyle(visualDensity: VisualDensity.compact),
            onPressed: () {
            
            }, child: Text(titulo!)
          )
        ],
      ),
    );
  }
}