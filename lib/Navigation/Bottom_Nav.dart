// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:dapp_minting/Screens/Home.dart';
import 'package:dapp_minting/Screens/Mining.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class Bottom_Nav extends StatefulWidget {
  @override
  _Bottom_NavState createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  // a variable to store the current selected tab. can be used to control PageView
  int _selectedIndex = 0;

  final tabs = [HomePage(), MiningPage(), HomePage(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: tabs[_selectedIndex]),
      // backgroundColor: Colors.deepPurple[400],
      // you can use the molten bar in the scaffold's bottomNavigationBar
      bottomNavigationBar: MoltenBottomNavigationBar(
        selectedIndex: _selectedIndex,
        domeHeight: 25,
        // specify what will happen when a tab is clicked
        onTabChange: (clickedIndex) {
          print(clickedIndex);
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        // ansert as many tabs as you like
        tabs: [
          MoltenTab(
            icon: Icon(Icons.home, size: 40),
            title: Text('Home'),
            // selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: Icon(Icons.handyman_outlined),
            title: Text('Mining'),
            // selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: Image.asset(
              'icons/Vector.png', // replace this with the path to your image file
              width: 140,
              height: 40,
              color: _selectedIndex == 2
                  ? Colors.white
                  : Color.fromARGB(255, 149, 149, 149),
            ), // replace this with the color you want

            title: Text('Text'),
            // selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: Image.asset(
              'icons/Game.png', // replace this with the path to your image file
              width: 140,
              height: 40,
              color: _selectedIndex == 3
                  ? Colors.white
                  : Color.fromARGB(255, 149, 149, 149),
            ),
            title: Text('Game'),
            // selectedColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
