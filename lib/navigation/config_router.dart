import 'package:concuatui_appclone/navigation/navigation_bottombar.dart';
import 'package:concuatui_appclone/pages/explore_page/explore_page.dart';
import 'package:concuatui_appclone/pages/search_page/search_page.dart';
import 'package:go_router/go_router.dart'; // Import your HomeScreen widget
// Import your DetailsScreen widget

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const NavigationBottomBar();
      },
      routes: [
        GoRoute(
          path: 'search',
          builder: (context, state) {
            return ExplorePage();
          },
        ),
      ],
    ),
  ],
);

class HomeScreen {}
