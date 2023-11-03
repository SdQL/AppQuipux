import 'package:flutter/material.dart';
import 'package:first_app/models/Materia.dart';
import 'package:first_app/widgets/delete_confirmation_modal.dart';

class MateriasTable extends StatelessWidget {
  final List<Materia> materias;
  final String title;
  final List<String> columnNames;
  final double cellWidth = 130.0;

  const MateriasTable({
    super.key,
    required this.materias,
    required this.title,
    required this.columnNames,
  });

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
              columnSpacing: 15.0,
              columns: columnNames.map((columnName) {
                return DataColumn(
                  label: Text(
                    columnName,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                );
              }).toList(),
              rows: materias.map((materia) {
                final isEven = materias.indexOf(materia) % 2 == 0;
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
                          materia.codMateria,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Text(
                          materia.nombre,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Text(
                          materia.profesor,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Text(
                          materia.grados.join(', '),
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        width: cellWidth,
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.visibility_outlined,
                                color: Color.fromARGB(255, 119, 196, 231),
                              ),
                              onPressed: () {
                                // Manejar la acción de vista aquí
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.delete_outline,
                                color: Color.fromARGB(255, 119, 196, 231),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context, 
                                  builder: (context) {
                                    return const DeleteConfirmationModal();
                                  }
                                );
                              },
                            ),
                          ],
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
