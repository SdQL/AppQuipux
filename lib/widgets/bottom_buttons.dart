import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlinedButton(
              onPressed: () {
                // Pendiente de implementar la acción cuando se presiona el botón "Cancelar"
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), 
                ),
              ),
              child: const Text("Cancelar"),
            ),
            const SizedBox(width: 16), 
            ElevatedButton(
              onPressed: () {
                // Pendiente de implementar la acción cuando se presiona el botón "Guardar"
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), 
                ),
              ),
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}