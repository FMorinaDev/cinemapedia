import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    int getLocationIndex(BuildContext context){
      final String location = GoRouterState.of(context).uri.toString();
      switch (location) {
        case '/':
          return 0;
        case '/categorias':
          return 1;
        default:
          return 2;
      }
    }
    void changeButtonNavigation(BuildContext context, int index){
      switch (index) {
        case 0:
          context.go('/');
          break;
        case 1:
          context.go('/');
          break;
        default:
          context.go('/favoritos');
          break;
      }
    }
    return BottomNavigationBar(
      currentIndex: getLocationIndex(context),
      elevation: 0,
      onTap: (value){
        changeButtonNavigation(context, value);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max), 
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline), 
          label: 'Categorias'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline), 
          label: 'Favoritos'
        )
      ] 
    );
  }
}