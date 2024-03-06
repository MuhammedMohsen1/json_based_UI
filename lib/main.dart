
import 'package:flutter/material.dart';
import 'package:testapp/core/routing/router.dart';
import 'package:testapp/core/routing/routes.dart';
import 'core/injection/di_container.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       initialRoute: Routes.home,
          navigatorKey: sl<AppRouter>().navigatorKey,
          onGenerateRoute: sl<AppRouter>().generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
