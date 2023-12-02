import 'package:flutter/material.dart';
class PeliculaScreen extends StatelessWidget {
  static const name = 'peliculaScreen';
  final String movieId;
  const PeliculaScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MovieID: $movieId'),
      ),
    );
  }
}