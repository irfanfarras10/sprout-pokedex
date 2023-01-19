import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout_pokedex/controllers/pokemon_list_controller.dart';

class PokemonListScreenItemWidget extends StatelessWidget {
  const PokemonListScreenItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PokemonListController controller = Get.find<PokemonListController>();

    final data = controller.data.results!;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0),
        child: GridView.count(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: List.generate(data.length, (index) {
            int itemIndex = index + 1;
            String showNumber = itemIndex.toString().padLeft(3, '0');
            return Card(
              color: Colors.white70,
              child: InkWell(
                onTap: () {
                  controller.viewDetail(itemIndex);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '#$showNumber',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Text(
                        '${data[index].name}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            child: Image.network(
                              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$itemIndex.png',
                              fit: BoxFit.fitHeight,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.red,
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
