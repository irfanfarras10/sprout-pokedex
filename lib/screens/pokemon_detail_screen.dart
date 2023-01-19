import 'package:flutter/material.dart';
import 'package:sprout_pokedex/controllers/pokemon_detail_controller.dart';
import 'package:get/get.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PokemonDetailController detail = Get.put(PokemonDetailController());
    return const Scaffold(
      body: Center(
        child: Text('Pokemon Detail Page'),
      ),
    );
  }
}
