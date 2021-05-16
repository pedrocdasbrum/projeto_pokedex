import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_pokedex/models/pokemon.dart';

class Weakness extends StatelessWidget {
  final Pokemon pokemon;

  Weakness(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          //1ª Linha
          Row(
            children: [
              Text(
                "Fraquezas",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          //2ª Linha
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 7,
                ),
                child: Text(
                  this.pokemon.weaknessWater.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 7,
                ),
                child: Text(
                  this.pokemon.weaknessClay.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lime,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 7,
                ),
                child: Text(
                  this.pokemon.weaknessRock.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
