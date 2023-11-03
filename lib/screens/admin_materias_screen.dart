import 'package:first_app/widgets/estudiantes_table.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/admin_filter_form.dart';
import 'package:first_app/models/Estudiante.dart';
import 'package:first_app/widgets/bottom_buttons.dart';

class AdminMateriasScreen extends StatefulWidget {
  const AdminMateriasScreen({super.key});

  @override
  State<AdminMateriasScreen> createState() => _AdminMateriasScreenState();
}

class _AdminMateriasScreenState extends State<AdminMateriasScreen> {
  
  final List<Estudiante>  _estudiantes = [
      Estudiante(codEstudiante: '2022101', nombre: 'Camila Fernandez Rojas', grado: '10', grupo: "A"),
      Estudiante(codEstudiante: '2022102', nombre: 'Juan Felipe Montoya Rios', grado: '9', grupo: "C"),
      Estudiante(codEstudiante: '2022103', nombre: 'Luisa María Cruz Hernandez', grado: '9', grupo: "B"),
      Estudiante(codEstudiante: '2022104', nombre: 'Ana María Bedoya López', grado: '8', grupo: "B"),
      Estudiante(codEstudiante: '2022105', nombre: 'Santiago Sanchez Rivera', grado: '7', grupo: "A"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(14, 91, 150, 1), 
        automaticallyImplyLeading: false,
        title: const Text(
          'Administración de materias / Materia',
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
          children:  [
                const AdminFilterForm(), // Agrega el formulario de filtros (widgets/admin_filter_form.dart)
                const SizedBox(height: 16),
                EstudiantesTable( // Agrega la tabla de estudiantes (widgets/estudiantes_table.dart)
                  title: 'Estudiantes', 
                  columnNames: const ['Código', 'Estudiante', 'Grado', 'Grupo', 'Estado', 'Nota promedio'],
                  estudiantes: _estudiantes,
                ),
                const SizedBox(height: 5),
                const BottomButtons(), // Agrega los botones inferiores (widgets/bottom_buttons.dart)
            ],
          ),
        ),
      ),
      
    );
  }
}