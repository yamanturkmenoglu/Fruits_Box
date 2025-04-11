import 'package:flutter/material.dart';
import 'package:fruits_box/core/services/shared_preferences_singleton.dart';

import 'core/helper_functions/on_generate_routes.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.init();
  runApp(const FruitsBox());
}

class FruitsBox extends StatelessWidget {
  const FruitsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
      theme: ThemeData(
        fontFamily: "Roboto",
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
