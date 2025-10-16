

import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
//el final es para
  final String donutFlavor; 
  final String donutPrice;
  final dynamic donutColor;
  final String donutImagePath;
  final String donutProvider;
  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, this.donutColor, required this.donutImagePath, required this.donutProvider});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
      decoration:BoxDecoration(color: donutColor[50], borderRadius: BorderRadius.circular(24)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: donutColor[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  topRight: Radius.circular(24)
                )
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 18,
              ),
              child: Text(
                '\$$donutPrice',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: donutColor[800],
                ),
              ),
            ),
              //Nombre de la dona
            //Tienda de la dona
            //Botones
          ],
        ),
        //imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36, vertical: 12
              ),
      
              child: Image.asset(donutImagePath),
            ),      
      
             //Nombre de la dona
             Text(
              donutFlavor,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            //Tienda de la dona
            Text(
              donutProvider,
              style: TextStyle(color: Colors.grey[600]),
              ),
            //Botones 
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Favorito
                  Icon(Icons.favorite, color: Colors.pink[300]),
              
              
                  //agregar
                  TextButton(
                    onPressed: (){}, 
                    child: Text(
                    'Add', 
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline),
                  ),),
                ],
              ),
            )
      ],),
      ),
    );
  }
}