import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';
class HomeScreen extends StatelessWidget {
  static const name = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(getPeliculasActualesProvider.notifier).loadNextPage();
    ref.read(getPeliculasPopularesProvider.notifier).loadNextPage();
    ref.read(getProximasPeliculasProvider.notifier).loadNextPage();
    ref.read(getPeliculasMejorCalificadasProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final initialLoading = ref.watch(initialLoadingProvider);

    if (initialLoading) return const FullScreenLoader();
    
    final nuevasPelicuas = ref.watch(getPeliculasActualesProvider);
    final peliculasSlider = ref.watch(peliculasSlidesshowProvider);
    final peliculasPopulares = ref.watch(getPeliculasPopularesProvider);
    final proximasPeliculas = ref.watch(getProximasPeliculasProvider);
    final peliculasMejorCalificadas = ref.watch(getPeliculasMejorCalificadasProvider);

    if (peliculasSlider.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    

    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
            titlePadding: EdgeInsets.zero,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(
                children: [
                  PeliculasSlideShow(peliculas: peliculasSlider),
                  PeliculaHorizontalListview(
                    peliculas: nuevasPelicuas,
                    titulo: 'En cines',
                    subTitulo: 'Lunes 20',
                    loadNextPage: () {
                      ref.read(getPeliculasActualesProvider.notifier).loadNextPage();
                    },
                  ),
                  PeliculaHorizontalListview(
                    peliculas: peliculasPopulares,
                    titulo: 'Populares',
                    loadNextPage: () {
                      ref.read(getPeliculasPopularesProvider.notifier).loadNextPage();
                    },
                  ),
                  PeliculaHorizontalListview(
                    peliculas: proximasPeliculas,
                    titulo: 'Proximas',
                    loadNextPage: () {
                      ref.read(getProximasPeliculasProvider.notifier).loadNextPage();
                    },
                  ),
                  PeliculaHorizontalListview(
                    peliculas: peliculasMejorCalificadas,
                    titulo: 'Mejor Calificadas',
                    subTitulo: 'Desde siempre',
                    loadNextPage: () {
                      ref.read(getPeliculasMejorCalificadasProvider.notifier).loadNextPage();
                    },
                  ),
                  const SizedBox(height: 20,)
                  /* Expanded(
                    child: ListView.builder(
                      itemCount: nuevasPelicuas.length,
                      itemBuilder: (context, index) {
                        final pelicula = nuevasPelicuas[index];
                        return ListTile(
                          title: Text(pelicula.titulo),
                        );
                      }
                    ),
                  ) */
                ],
              );
            },
            childCount: 1
          )
        )
      ]      
    );
  }
}