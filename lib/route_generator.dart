import 'package:flutter/material.dart';
import 'package:first_app/screens/materias_screen.dart';
import 'package:first_app/screens/estudiantes_screen.dart';
import 'package:first_app/screens/admin_materias_screen.dart';
import 'package:first_app/screens/grupos_screen.dart';
import 'package:first_app/screens/evaluaciones_screen.dart';
import 'package:first_app/screens/informes_screen.dart';



class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/materias':
        return MaterialPageRoute(builder: (_) => const MateriasScreen());
      case '/estudiantes':
        return MaterialPageRoute(builder: (_) => const EstudiantesScreen());
      case '/admin-materias':
        return MaterialPageRoute(builder: (_) => const AdminMateriasScreen());
      case '/grupos':
        return MaterialPageRoute(builder: (_) => const GruposScreen());
      case '/evaluaciones':
        return MaterialPageRoute(builder: (_) => const EvaluacionesScreen());
      case '/informes':
        return MaterialPageRoute(builder: (_) => const InformesScreen());
      default:
        // Manejar rutas no definidas
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Ruta desconocida: ${settings.name}'),
            ),
          ),
        );
    }
  }
}



