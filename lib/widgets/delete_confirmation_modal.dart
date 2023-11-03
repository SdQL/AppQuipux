import 'package:flutter/material.dart';

class DeleteConfirmationModal extends StatefulWidget {
  const DeleteConfirmationModal({super.key});

  @override
  State<DeleteConfirmationModal> createState() => _DeleteConfirmationModalState();
}

class _DeleteConfirmationModalState extends State<DeleteConfirmationModal> {
  @override
  Widget build(BuildContext context) {
                return AlertDialog(
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Eliminar [nombre_de_materia]"), 
                        const Divider(
                          color: Colors.grey, 
                          height: 20,
                          thickness: 2,
                        ),
                        const Text("¿Estás seguro que deseas eliminar la materia?"),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                
                                Navigator.of(context).pop(); // Cierra la modal
                              },
                              child: const Text("No"),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Cierra la modal
                              },
                              child: const Text("Sí"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
  }
}
