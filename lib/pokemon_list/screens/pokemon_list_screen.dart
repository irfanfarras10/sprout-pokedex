import 'package:flutter/material.dart';

class PokemonListScreen extends StatelessWidget {
  const PokemonListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Expanded(
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
            )
          ],
        ),
      ),
    );
  }
}
