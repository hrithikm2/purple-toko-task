import 'package:auto_route/auto_route.dart';
import 'package:purple_toko/screens/all_nearby_products/all_nearby_products_screen.dart';
import '../screens/login/login_screen.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  AutoRoute(page: LoginScreen, initial: true),
  AutoRoute(page: AllNearbyProductsScreen)
])
class $AppRouter {}
