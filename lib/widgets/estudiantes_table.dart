import 'package:flutter/material.dart';
import 'package:first_app/models/Estudiante.dart';

class EstudiantesTable extends StatelessWidget {
  final List<Estudiante> estudiantes;
  final String title;
  final List<String> columnNames;
  final double cellWidth = 140.0;

  const EstudiantesTable({super.key, required this.estudiantes, required this.title, required this.columnNames});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(228, 228, 228, 1),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.lightBlue),
              ),
            ),

            DataTable(
              columnSpacing: 30.0,
              columns: columnNames.map((columnName) {
                return DataColumn(
                  label: Text(
                    columnName,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                );
              }).toList(),
              rows: estudiantes.map((est) {
                final isEven = estudiantes.indexOf(est) % 2 == 0;
                final rowColor = isEven
                    ? MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) =>
                            const Color.fromRGBO(241, 248, 254, 1))
                    : MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) =>
                            const Color.fromRGBO(226, 240, 252, 1));

                return DataRow(
                  cells: <DataCell>[
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Text(
                          est.codEstudiante,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Text(
                          est.nombre,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Text(
                          est.grado,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Text(
                          est.grupo,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        height: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!), 
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: DropdownButton<String>(
                            items: ['En curso'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    color: Colors.grey, 
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              
                            },
                            value: 'En curso', 
                            underline: Container(), 
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[300]!, 
                              ),
                            ),
                          ),
                          onChanged: (text) {
                            
                          },
                          
                        ),
                      ),
                    ),
                  ],
                  color: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) => rowColor),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}