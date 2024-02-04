import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PeliculasMasonry extends StatefulWidget {
  final List<Pelicula> peliculas;
  final VoidCallback? loadNextPage;
  const PeliculasMasonry({super.key, required this.peliculas, this.loadNextPage});

  @override
  State<PeliculasMasonry> createState() => _PeliculasMasonryState();
}

class _PeliculasMasonryState extends State<PeliculasMasonry> {
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (widget.loadNextPage == null) return;

      if ((scrollController.position.pixels + 100) >= scrollController.position.maxScrollExtent) {
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        controller: scrollController,
        crossAxisCount: 3, 
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: widget.peliculas.length,
        itemBuilder: (context, index){
          if (index == 1) {
            return Column(
              children: [
                const SizedBox(height: 40,),
                PeliculaPosterLink(pelicula: widget.peliculas[index])
              ],
            );
          }
          return PeliculaPosterLink(pelicula: widget.peliculas[index]);
        }
      ),
    );
  }
}