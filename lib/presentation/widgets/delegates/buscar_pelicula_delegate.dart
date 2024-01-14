import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/config/helpers/helpers.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:flutter/material.dart';

typedef BuscarPeliculasCallBack =Future<List<Pelicula>> Function(String query);

class BuscarPeliculaDelegate extends SearchDelegate<Pelicula?> {
  final BuscarPeliculasCallBack buscarPeliculas;
  StreamController<List<Pelicula>> debouncedPeliculas = StreamController.broadcast();
  Timer? _debounceTimer;
  void clearStreams(){
    debouncedPeliculas.close();
  }

  void _onQueryChanged(String query){
    if(_debounceTimer?.isActive  ?? false) _debounceTimer!.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 500),() async {
      if (query.isEmpty) {
        debouncedPeliculas.add([]);
        return;
      }
      final peliculas = await buscarPeliculas(query);
      debouncedPeliculas.add(peliculas);
    });
  }

  @override
  String get searchFieldLabel => 'Buscar Pelicula';

  BuscarPeliculaDelegate({
    required this.buscarPeliculas,
  });
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      /* if(query.isNotEmpty) */
      FadeIn(
        animate: query.isNotEmpty,
        duration: const Duration(milliseconds: 100),
        child: IconButton(
          onPressed: () => query = '', 
          icon: const Icon(Icons.clear)
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        clearStreams();
        close(context, null);
      }, 
      icon: const Icon(Icons.arrow_back_ios_new_rounded)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('BuildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    /* return FutureBuilder(
      future: buscarPeliculas(query),
      builder: (context, snapshot) {
        final List<Pelicula> peliculas = snapshot.data ?? [];
        return ListView.builder(
          itemCount: peliculas.length,
          itemBuilder: (context, index){
            return  _PeliculaItem(pelicula: peliculas[index], onPeliculaSeleccionada: close,);
          }
        );
      }
    ); */
    _onQueryChanged(query);
    return StreamBuilder(
      stream: debouncedPeliculas.stream,
      builder: (context, snapshot) {
        final List<Pelicula> peliculas = snapshot.data ?? [];
        return ListView.builder(
          itemCount: peliculas.length,
          itemBuilder: (context, index){
            return  _PeliculaItem(
              pelicula: peliculas[index], 
              onPeliculaSeleccionada: (context, pelicula){
                clearStreams();
                close(context, pelicula);
              });
          }
        );
      }
    );
  }
  
}

class _PeliculaItem extends StatelessWidget {
  final Pelicula pelicula;
  final Function onPeliculaSeleccionada;
  const _PeliculaItem({required this.pelicula, required this.onPeliculaSeleccionada});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GestureDetector(
        onTap: (){
          onPeliculaSeleccionada(context, pelicula);
        },
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  pelicula.posterPath,
                  loadingBuilder: (context, child, loadingProgress) => FadeIn(child: child),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            SizedBox(
              width: size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pelicula.titulo, style: textStyles.titleMedium,),
                  (pelicula.descripcionGeneral.length > 100)
                    ? Text('${pelicula.descripcionGeneral.substring(0,100)}...')
                    : Text(pelicula.descripcionGeneral),
                    Row(
                      children: [
                        Icon(Icons.star_half_rounded, color: Colors.yellow.shade800,),
                        const SizedBox(width: 5,),
                        Text(Helpers.numero(pelicula.promedioVotos, 1), style: textStyles.bodyMedium!.copyWith(color:Colors.yellow.shade900),)
                      ],
                    )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}