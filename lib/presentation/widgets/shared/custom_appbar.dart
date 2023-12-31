import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
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
                  
                  }, 
                  icon: const Icon(Icons.search))
              ],
            ),
          ),
        )
      );
  }
}
