import 'package:flutter/material.dart';
import 'package:sprout_pokedex/controllers/pokemon_detail_controller.dart';
import 'package:get/get.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PokemonDetailController controller =
        Get.put(PokemonDetailController());
    return Scaffold(
      body: Obx(
        () {
          Widget body;
          body = Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
          if (controller.viewState.value == ViewState.finish) {
            body = Column(
              children: [
                Expanded(
                  child: Center(child: Text('Atas')),
                ),
                Expanded(
                  child: Center(child: Text('Bawah')),
                ),
              ],
            );
          }
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: body,
          );
        },
      ),
    );
  }
}
