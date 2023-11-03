import 'package:flutter/material.dart';
import 'package:first_app/widgets/bottom_navigation.dart';
import 'package:first_app/models/Materia.dart';
import 'package:first_app/utils/navigation_utils.dart';
import 'package:first_app/widgets/materias_table.dart';
import 'package:first_app/widgets/filters_form.dart';
import 'package:first_app/widgets/add_button.dart';


class MateriasScreen extends StatefulWidget {
  const MateriasScreen({super.key});

  @override
  State<MateriasScreen> createState() => _MateriasScreenState();
}

class _MateriasScreenState extends State<MateriasScreen> {
  int _currentIndex = 0;

 final List<Materia>  _materias = [
    Materia(codMateria: "SOC001", nombre: 'Geografía', profesor: 'Fabio León Restrepo', grados: [6, 7, 8, 9, 10, 11]),
    Materia(codMateria: "SOC002", nombre: 'Historia', profesor: 'Jaime Alberto Giraldo', grados: [6, 7, 8]),
    Materia(codMateria: "SOC003", nombre: 'Filosofía', profesor: 'Adriana María Zuluaga', grados: [9, 10, 11]),
    Materia(codMateria: "IDM001", nombre: 'Español', profesor: 'Fabiola Ramirez', grados: [6, 7, 8, 9, 10, 11]),
    Materia(codMateria: "IDM003", nombre: 'Inglés', profesor: 'María Dolores Smicth', grados: [6, 7, 8, 9, 10, 11]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: const Color.fromRGBO(14, 91, 150, 1), 
        automaticallyImplyLeading: false,
        title: const Text(
          'Materias',
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), 
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16), 
            bottomRight: Radius.circular(16), 
          ),
        ),
      ),
      body: Center(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            FloatingAddButton(
              onPressed: () {
                Navigator.pushNamed(context, '/admin-materias');
              }
            ),
            const SizedBox(height: 16),
            const FiltersForm(), // Agrega el formulario de filtros (widgets/filters_form.dart)
            const SizedBox(height: 16),
            MateriasTable( // Agrega la tabla de materias (widgets/materias_table.dart)
              title: 'Tabla de Materias',
              columnNames: const ['Código', 'Materia', 'Profesor', 'Grado', 'Acciones'],
              materias: _materias,
            ), 
            
            ],
          ),
        ),
      ),

      bottomNavigationBar: Theme(
  data: Theme.of(context).copyWith(
    canvasColor: const Color.fromRGBO(14, 91, 150, 1), 
    primaryColor: Colors.white, 
  ),
  
  child: ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(16.0), 
      topRight: Radius.circular(16.0),
    ),
  child: BottomNavigation(
    currentIndex: _currentIndex,
    onTap: (index) {
      setState(() {
        _currentIndex = index;
        navigateToScreen(context, index); // Navega a la pantalla seleccionada
      });
    },
  ),
  ),
),
    );
  }
}
