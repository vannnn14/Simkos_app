import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,

      items: const [

        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long_rounded),
          label: 'Tagihan',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: 'Rekap',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_rounded),
          label: 'Penghuni',
        ),
      ],
    );
  }
}