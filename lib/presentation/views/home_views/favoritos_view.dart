import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FavoritosView extends ConsumerStatefulWidget {
  const FavoritosView({super.key});

  @override
  FavoritosViewState createState() => FavoritosViewState();
}

class FavoritosViewState extends ConsumerState<FavoritosView> {
  bool isLastPage = false;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    loadNextPage();
  }
  void loadNextPage() async{
    if(isLoading || isLastPage) return;

    isLoading = true;

    final peliculas = await ref.read(favoritasPelicuasProvider.notifier).loadNextPage();

    isLoading = false;

    if (peliculas.isEmpty) {
      isLastPage =  true;
    }

  }
  @override
  Widget build(BuildContext context) {
    final peliculasFavoritas = ref.watch(favoritasPelicuasProvider).values.toList();

    if (peliculasFavoritas.isEmpty) {
      final colores = Theme.of(context).colorScheme;
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.favorite_outline_sharp, size: 60,color: colores.primary,),
            Text('Ohhh no!!', style: TextStyle(fontSize: 30, color: colores.primary)),
            const Text('No tienes peliculas favoritas', style: TextStyle(fontSize: 20, color: Colors.black45),),
            const SizedBox(height: 20,),
            FilledButton.tonal(onPressed: () => context.go('/'), child: const Text('Empieza a buscar'))
          ],
        ),
      );
    }
    return Scaffold(
      body: PeliculasMasonry(
        loadNextPage: loadNextPage,
        peliculas: peliculasFavoritas
      )
    );
  }
}