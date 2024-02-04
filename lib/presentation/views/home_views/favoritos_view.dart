import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Scaffold(
      body: PeliculasMasonry(
        loadNextPage: loadNextPage,
        peliculas: peliculasFavoritas
      )
    );
  }
}