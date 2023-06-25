import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapes_test/Bindings/HomeBinding.dart';

import 'Bindings/PokemonsBinding.dart';
import 'Views/Animations.dart';
import 'Views/Home.dart';
import 'Views/Pokemons.dart';
import 'Views/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(
          name: '/SplashScreen',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/Animations',
          page: () => Animations(),
        ),
        GetPage(
          name: '/Home',
          page: () => Home(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/Pokemons',
          page: () => Pokemons(),
          binding: PokemonsBinding(),
        )
      ],
    );
  }
}
