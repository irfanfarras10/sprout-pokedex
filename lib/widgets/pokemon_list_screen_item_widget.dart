import 'package:flutter/material.dart';

class PokemonListScreenItemWidget extends StatelessWidget {
  const PokemonListScreenItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0),
        child: GridView.count(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [
            Card(
              child: Text('Pokemon'),
              elevation: 1.0,
            ),
            Card(
              child: Text('Pokemon'),
              elevation: 1.0,
            ),
            Card(
              child: Text('Pokemon'),
              elevation: 1.0,
            ),
            Card(
              child: Text('Pokemon'),
              elevation: 1.0,
            ),
            Card(
              child: Text('Pokemon'),
              elevation: 1.0,
            ),
            Card(
              child: Text('Pokemon'),
              elevation: 1.0,
            ),
            Card(
              child: Text('Pokemon'),
              elevation: 1.0,
            )
          ],
        ),
      ),
    );
  }
}
