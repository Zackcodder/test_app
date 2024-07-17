import 'package:flutter/material.dart';

class HousesScreen extends StatelessWidget {
  const HousesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My houses'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(23),
          color: Colors.green,
          child: Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg')
          // ListView(
          //   scrollDirection: Axis.vertical,
          //   children: [
          //     ///first house
          //     Container(
          //       height: MediaQuery.of(context).size.height,
          //       child: Column(
          //         children: [
          //           Image.asset('assets/house.jpg'),
          //           Text('This is my first apartment')
          //         ],
          //       ),
          //     ),

          //     ///2nd house
          //     Image.asset('assets/house1.jpg'),

          //     ///3rd house
          //     Image.asset('assets/house2.jpg'),

          //     ///4th house
          //     Image.asset('assets/house3.png'),

          //     ///internet image
          //     // AssetImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg')
          //   ],
          // ),
          ),
    );
  }
}
