import 'package:flutter/material.dart';

// Navegación entre pantallas de la aplicación (bottom navigation bar)
void onTabTapped(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, '/materias');
      break;
    case 1:
      Navigator.pushNamed(context, '/estudiantes');
      break;
    case 2:
      Navigator.pushNamed(context, '/grupos');
      break;
    case 3:
      Navigator.pushNamed(context, '/evaluaciones');
      break;
    case 4:
      Navigator.pushNamed(context, '/informes');
      break;   
  }
}

void navigateToScreen(BuildContext context, int index) {
  onTabTapped(context, index);
}
