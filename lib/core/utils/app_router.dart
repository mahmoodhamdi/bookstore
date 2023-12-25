import 'package:bookstore/featuers/home/presentation/view/book_details_view.dart';
import 'package:bookstore/featuers/home/presentation/view/home_view.dart';
import 'package:bookstore/featuers/search/presentation/views/search_view.dart';
import 'package:bookstore/featuers/splash/presenation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/searchView";

  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    )
  ]);
}
