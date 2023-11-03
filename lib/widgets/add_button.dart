import 'package:flutter/material.dart';

class FloatingAddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingAddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0, // Distancia desde la parte inferior
      right: 16.0, // Distancia desde la derecha
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(14, 91, 150, 1), 
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.add,
                  color:  Color.fromRGBO(14, 91, 150, 1), // Color del icono
                ),
                SizedBox(width: 8.0),
                Text(
                  'Nuevo registro',
                  style: TextStyle(
                    color:  Color.fromRGBO(14, 91, 150, 1), // Color del texto
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
