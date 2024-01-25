import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

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
  /* @override
  Widget build(BuildContext context) {
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
  } */
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return NavigationBar(
      elevation: 0,
      indicatorColor: colors.inversePrimary,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      height: size.height * 0.1,
      backgroundColor: colors.background,
      selectedIndex: getLocationIndex(context),
      onDestinationSelected: (value) => changeButtonNavigation(context, value),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.category),
          label: 'Categorias',
        ),
        NavigationDestination(
          icon: Icon(Icons.favorite),
          label: 'Favoritos',
        )
      ],
    );
  }
}