import 'package:flutter/material.dart';
class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessage(){
    final messages = <String>[
      'Cargando peliculas',
      'Comprando ropa',
      'Comprando golosinas'
    ];
    return Stream.periodic(const Duration(milliseconds: 200), (step) {
      return messages[step];
    }).take(messages.length);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor'),
          const SizedBox(height: 10,),
          const CircularProgressIndicator(strokeWidth: 2,),
          const SizedBox(height: 10,),
          StreamBuilder(
            stream: getLoadingMessage(), 
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Text('Cargando...');
              }
              return Text(snapshot.data!);
            },
          )
        ],
      ),
    );
  }
}