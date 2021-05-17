import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_pokedex/models/pokemon.dart';
import 'package:projeto_pokedex/screens/home/weakness.dart';
import 'package:projeto_pokedex/screens/home/widgets/details.dart';

class Home extends StatelessWidget {
  final Pokemon pokemon = Pokemon(
    photo: "assets/images/charmander.png",
    description:
        "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
    height: 0.6,
    weight: 8.5,
    type: "Fogo",
    skils: "Chama",
    weaknessWater: "Água",
    weaknessClay: "Terra",
    weaknessRock: "Rocha",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Charmander",
           textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              pokemon.photo,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.description,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/bola_azul.png",
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/bola_vermelha.png",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Details(pokemon),
            SizedBox(
              height: 20,
            ),
            Weakness(pokemon),
          ],
        ),
      ),
    );
  }
}
