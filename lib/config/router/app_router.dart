
import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:cinemapedia/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

final appRouer = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child){
        return HomeScreen(childView: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state){
            return const HomeView();
          },
          routes: [
            GoRoute(
              path: 'movie/:id',
              name: PeliculaScreen.name,
              builder: (context, state) {
                final movieId = state.pathParameters['id'] ?? 'no-id';
                return PeliculaScreen( movieId: movieId,);
              },
            )
          ]
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, state){
            return const FavoritosView();
          }
        ),
      ]
    )
    //Rutas padre/hijas
    /* GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(childView: HomeView(),),
      routes: [
        GoRoute(
          path: 'movie/:id',
          name: PeliculaScreen.name,
          builder: (context, state) {
            final movieId = state.pathParameters['id'] ?? 'no-id';
            return PeliculaScreen( movieId: movieId,);
          },
        )
      ]
    ), */
    
  ]
);