import 'package:flutter/material.dart';

class FiltersForm extends StatefulWidget {
  const FiltersForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FiltersFormState createState() => _FiltersFormState();
}

class _FiltersFormState extends State<FiltersForm> {
  String selectedGrado = '';
  String selectedGrupo = '';
  String selectedMateria = '';
  String selectedProfesor = '';

  // Pendiente de implementar con la API
  List<String> grados = ['6', '7', '8', '9', '10', '11']; 
  List<String> grupos = ['Grupo 1', 'Grupo 2', 'Grupo 3'];
  List<String> materias = ['Geografía', 'Historia', 'Filosofía', 'Español', 'Inglés'];
  List<String> profesores = ['Fabio León Restrepo', 'Jaime Alberto Giraldo', 'Adriana María Zuluaga', 'Fabiola Ramirez', 'María Dolores Smicth'];

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
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: null,
            items: grupos.map((grupo) {
              return DropdownMenuItem<String>(
                value: grupo,
                child: Text(grupo),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedGrupo = value!;
              });
            },
            decoration: const InputDecoration(labelText: 'Grupo'),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: null,
            items: materias.map((materia) {
              return DropdownMenuItem<String>(
                value: materia,
                child: Text(materia),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedMateria = value!;
              });
            },
            decoration: const InputDecoration(labelText: 'Materia'),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: null,
            items: profesores.map((profesor) {
              return DropdownMenuItem<String>(
                value: profesor,
                child: Text(profesor),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedProfesor = value!;
              });
            },
            decoration: const InputDecoration(labelText: 'Profesor'),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Realizar la búsqueda aquí
                },
                child: const Text('Buscar'),
              ),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {
                  // Limpiar los filtros aquí
                },
                child: const Text(
                  'Limpiar filtros',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color:  Color.fromRGBO(40, 154, 226, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
