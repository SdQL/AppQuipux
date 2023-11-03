import 'package:flutter/material.dart';
import 'package:first_app/widgets/bottom_navigation.dart';
import 'package:first_app/utils/navigation_utils.dart';

class EstudiantesScreen extends StatefulWidget {
  const EstudiantesScreen({super.key});

  @override
  State<EstudiantesScreen> createState() => _EstudiantesScreenState();
}

class _EstudiantesScreenState extends State<EstudiantesScreen> {
  int _currentIndex = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Personaliza la apariencia de la AppBar
        elevation: 0,
        backgroundColor: const Color.fromRGBO(14, 91, 150, 1),
        automaticallyImplyLeading: false,
        title: const Text(
          'Estudiantes',
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
      body: const Center(
        child: Text("Estudiantes screen")
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
        navigateToScreen(context, index); // Navega a la pantalla seleccionada (utils/navigation_utils.dart)
      });
    },
  ),
  ),
),
    );
  }
}