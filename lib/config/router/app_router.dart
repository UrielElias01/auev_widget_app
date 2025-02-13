import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/buttons',
    builder: (context, state) => const ButtonsScreen(),
  ),
  GoRoute(
    path: '/cards',
    builder: (context, state) => const CardsScreen(),
  ),
  GoRoute(
    path: '/progress',
    builder: (context, state) => const ProgressScreen(),
  ),
  GoRoute(
    path: '/snackbar',
    builder: (context, state) => const SnackbarScreen(),
  ),
]);
