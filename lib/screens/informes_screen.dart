import 'package:flutter/material.dart';
import 'package:first_app/widgets/bottom_navigation.dart';
import 'package:first_app/utils/navigation_utils.dart';

class InformesScreen extends StatefulWidget {
  const InformesScreen({super.key});

  @override
  State<InformesScreen> createState() => _InformesScreenState();
}

class _InformesScreenState extends State<InformesScreen> {
  int _currentIndex = 4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Personaliza la apariencia de la AppBar
        elevation: 0,
        backgroundColor: const Color.fromRGBO(14, 91, 150, 1), // Usando el color 'curious-blue-500'
        automaticallyImplyLeading: false,
        title: const Text(
          'Materias',
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), // Cambia el color del título
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16), // Bordes curvados en la parte inferior
            bottomRight: Radius.circular(16), // Bordes curvados en la parte inferior
          ),
        ),
      ),
      body: const Center(
        child: Text("Informes screen")
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