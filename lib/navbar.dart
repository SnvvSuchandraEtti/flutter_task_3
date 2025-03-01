import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uiscreen1/widgets.dart';
import 'profile.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _updateScreens();
  }

  void _updateScreens() {
    _screens = [
      const HomeScreen(),

      const ProfileScreen(),
    ];
  }

  List<BottomNavigationBarItem> _getNavItems() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(Iconsax.home),
        label: 'Home',
      ),

      BottomNavigationBarItem(
        icon: Icon(Iconsax.user),
        label: 'Profile',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: _buildWhatsAppStyleNavBar(),
    );
  }

  Widget _buildWhatsAppStyleNavBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) => setState(() => _currentIndex = index),
      items: _getNavItems(),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromARGB(255, 255, 153, 0), 
      unselectedItemColor: Colors.grey[600],
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      iconSize: 28,
    );
  }
}
