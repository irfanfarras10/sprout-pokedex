import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout_pokedex/controllers/pokemon_list_controller.dart';
import 'package:sprout_pokedex/widgets/pokemon_list_screen_item_widget.dart';

class PokemonListScreen extends StatelessWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PokemonListController controller = Get.put(PokemonListController());
    return Obx(
      () {
        Widget body;
        body = Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        );
        if (controller.viewState.value == ViewState.finish) {
          body = PokemonListScreenItemWidget();
        }

        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/backgrounds/pokemon_list_background.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 60.0, 25.0, 25.0),
                  child: Text(
                    'Pokedex',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF373E48),
                    ),
                  ),
                ),
                body,
              ],
            ),
          ),
        );
      },
    );
  }
}
