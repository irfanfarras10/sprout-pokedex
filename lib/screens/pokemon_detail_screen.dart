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
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/backgrounds/pokemon_list_background.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(0.3),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        25,
                                        60,
                                        25,
                                        0,
                                      ),
                                      child: Text(
                                        '${controller.data.name!}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        25,
                                        10,
                                        25,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: List.generate(
                                          controller.data.types!.length,
                                          (index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                10,
                                                0,
                                              ),
                                              child: Chip(
                                                label: Text(
                                                  '${controller.data.types![index].type!.name}',
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                backgroundColor:
                                                    Colors.blueAccent.shade100,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    25,
                                    90,
                                    25,
                                    0,
                                  ),
                                  child: Text(
                                    '#${controller.id.toString().padLeft(3, '0')}',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Center(
                                child: SizedBox(
                                  child: Image.network(
                                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${controller.id}.png',
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
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(0.3),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                        ),
                      )
                    ],
                  ),
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
