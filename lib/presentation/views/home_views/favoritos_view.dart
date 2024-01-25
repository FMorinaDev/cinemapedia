import 'package:flutter/material.dart';

class FavoritosView extends StatelessWidget {
  const FavoritosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos View'),
      ),
      body: Center(
        child: Text('Favoritos'),
      ),
    );
  }
}