import 'package:flutter/material.dart';

class AdminFilterForm extends StatefulWidget {
  const AdminFilterForm({super.key});

  @override
  State<AdminFilterForm> createState() => _AdminFilterFormState();
}

class _AdminFilterFormState extends State<AdminFilterForm> {

  String selectedEstudiante = '';
  String selectedCodEstudiante = '';
  String selectedGrado = '';

  List<String> estudiantes = ['...'];  // Pendiente de implementar con la API
  List<String> codEstudiantes = ['...'];  // Pendiente de implementar con la API
  List<String> grados = ["..."]; // Pendiente de implementar con la API



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(228, 228, 228, 1),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
     
      child: Column(
        children: [
          const Text("Información de la materia", style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.lightBlue), ),
          DropdownButtonFormField<String>(
            value: null,
            items: estudiantes.map((estudiante) {
              return DropdownMenuItem<String>(
                value: estudiante,
                child: Text(estudiante),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedEstudiante = value!;
              });
            },
            decoration: const InputDecoration(labelText: 'Estudiante'),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: null,
            items: codEstudiantes.map((codEst) {
              return DropdownMenuItem<String>(
                value: codEst,
                child: Text(codEst),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCodEstudiante = value!;
              });
            },
            decoration: const InputDecoration(labelText: 'Código estudiante'),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: null,
            items: grados.map((grado) {
              return DropdownMenuItem<String>(
                value: grado,
                child: Text(grado),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedGrado = value!;
              });
            },
            decoration: const InputDecoration(labelText: 'Grado'),
          ),  
        ],
      ),
    );
  }
}