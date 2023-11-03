import 'package:first_app/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:first_app/screens/materias_screen.dart';


void main() {
  runApp(
    const MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/materias',
      home: MateriasScreen(),
    ),
  );
}



