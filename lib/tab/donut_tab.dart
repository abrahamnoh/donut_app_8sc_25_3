import 'package:donut_app_8sc_25_3/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  //list of donuts
  final List donutOnSale =[
    //donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    //para poner el signo de pesos $ hay que ponerlo entre comillas '' y ponerle el signo de pesos \$ 
    ['Chocolate', '200', Colors.brown, 'lib/images/chocolate_donut.png', 'Starbucks'],
    ['Strawberry', '250', Colors.pink, 'lib/images/strawberry_donut.png', 'Krispy Kreme'],
    ['icecream', '150', Colors.blue, 'lib/images/icecream_donut.png', 'Dunkin Donuts '],
    ['grape', '300', Colors.orange, 'lib/images/grape_donut.png', 'OXXO']

    
      ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas
        crossAxisCount: 2,
        //relacion de aspecto
        childAspectRatio: 1 / 1.45,
        
      ), 
      itemCount: donutOnSale.length,
      //Lo que se va a contruir en el grid

      
      itemBuilder:(contect, index){
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      } 
      
    );
  }
}