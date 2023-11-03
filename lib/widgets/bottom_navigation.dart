import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigation({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
    
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedIconTheme: const IconThemeData(color: Color.fromARGB(255, 180, 212, 226)),
      unselectedItemColor: const Color.fromARGB(255, 180, 212, 226),
      currentIndex: currentIndex,
      elevation: 0,
      onTap: onTap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.book_rounded),
          label: 'Materias',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.co_present_rounded),
          label: 'Estudiantes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_3),
          label: 'Grupos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist_rtl_rounded),
          label: 'Evaluaciones',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info_rounded),
          label: 'Informes',
        ),
      ],
    );
  }
}
