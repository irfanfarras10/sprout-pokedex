import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout_pokedex/screens/pokemon_list_screen.dart';

void main() {
  runApp(SproutPokedex());
}

class SproutPokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NeueHaasDisplay',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => PokemonListScreen(),
        )
      ],
    );
  }
}
