import 'package:donut_app_8sc_25_3/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    //donut Tab
    const MyTab(iconPath:'lib/icons/donut.png', iconName: 'Donut'),
    //burget Tab
    const MyTab(iconPath:'lib/icons/burger.png', iconName: 'Burger'),
    //Smoothie tab
    const MyTab(iconPath:'lib/icons/smoothie.png', iconName: 'Smoothie'),
    //Pancake Tab
    const MyTab(iconPath:'lib/icons/pancakes.png', iconName: 'Pancake'),
    //Pizza Tab
    const MyTab(iconPath:'lib/icons/pizza.png', iconName: 'Pizza'),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        
    
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[800],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          //1. Texto Principal
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Row(
              children: [
                Text('I want to ',
                style: TextStyle(fontSize: 24),
                ),
                Text('eat',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
                )
              ],
            ),
          ),

          //2. Pestañas o (TabBar)
          TabBar(tabs: myTabs)
          //3. Contenido de pestañas(TabBarView)
          

          //4. Carrito (Car)
        ],
      ),
      ),
      );
  }
}