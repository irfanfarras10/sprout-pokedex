import 'package:flutter/material.dart';
import 'package:sprout_pokedex/pokemon_list/screens/pokemon_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NeueHaasDisplay',
      ),
      debugShowCheckedModeBanner: false,
      home: PokemonListScreen(),
    );
  }
}
