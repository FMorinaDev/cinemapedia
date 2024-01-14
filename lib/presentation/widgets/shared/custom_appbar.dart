import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/delegates/buscar_pelicula_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final colores = Theme.of(context).colorScheme;
    final estiloTitulo = Theme.of(context).textTheme.titleMedium;
    return SafeArea(
      bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(Icons.movie_outlined, color: colores.primary ),
                const SizedBox(width: 5,),
                Text('Cinemapedia', style: estiloTitulo,),
                const Spacer(),

                IconButton(
                  onPressed: () {
                    /* final searchPeliculas = ref.read(searchPeliculasProvider); */
                    final searchQuery = ref.read(searchQueryProvider);
                    showSearch<Pelicula?>(
                      query: searchQuery,
                      context: context, 
                      delegate: BuscarPeliculaDelegate(
                        buscarPeliculas: ref.read(searchPeliculasProvider.notifier).searchPeliculasByQuery,
                        initialPeliculas: ref.read(searchPeliculasProvider)
                      )
                    ).then((pelicula) {
                      if (pelicula == null) return;

                      context.push('/movie/${pelicula.id}');
                    });
                  }, 
                  icon: const Icon(Icons.search))
              ],
            ),
          ),
        )
      );
  }
}
