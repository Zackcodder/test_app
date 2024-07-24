import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Bottom Navigation Bar'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ///first house
          Image.asset('assets/house.jpg'),

          ///2nd house
          Image.asset('assets/house1.jpg'),

          ///3rd house
          Image.asset('assets/house2.jpg'),

          ///4th house
          Image.asset('assets/house3.png'),

          ///internet image
          Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg'),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 18.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 'Home', 0),
            _buildNavItem(Icons.play_arrow, 'Play', 1),
            const SizedBox(width: 40), // Space for the floating action button
            _buildNavItem(Icons.help_outline, 'Help', 2),
            _buildNavItem(Icons.more_horiz, 'More', 3),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 100,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.yellow,
          shape: const CircleBorder(),
          onPressed: () {
            // Action for the FAB
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    Color color = _selectedIndex == index ? Colors.yellow : Colors.grey;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Text(label, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
