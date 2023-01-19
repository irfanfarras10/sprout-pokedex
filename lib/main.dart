import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout_pokedex/screens/pokemon_detail_screen.dart';
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
      initialRoute: '/pokemon',
      getPages: [
        GetPage(
          name: '/pokemon',
          page: () => PokemonListScreen(),
        ),
        GetPage(name: '/pokemon/:id', page: () => PokemonDetailScreen())
      ],
    );
  }
}
