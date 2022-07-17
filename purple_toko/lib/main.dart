import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purple_toko/routes/app_router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: 'Purple Toko',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primarySwatch: Colors.purple),
    );
  }
}
