import 'package:flutter/material.dart';
import 'package:first_app/utils/navigation_utils.dart';
import 'package:first_app/widgets/bottom_navigation.dart';

class EvaluacionesScreen extends StatefulWidget {
  const EvaluacionesScreen({super.key});

  @override
  State<EvaluacionesScreen> createState() => _EvaluacionesScreenState();
}

class _EvaluacionesScreenState extends State<EvaluacionesScreen> {
  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(
            14, 91, 150, 1), 
        automaticallyImplyLeading: false,
        title: const Text(
          'Materias',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold), 
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft:
                Radius.circular(16), 
            bottomRight:
                Radius.circular(16), 
          ),
        ),
      ),
      body: const Center(child: Text("Evaluaciones screen")),
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
                navigateToScreen(
                    context, index); // Navega a la pantalla seleccionada (utils/navigation_utils.dart)
              });
            },
          ),
        ),
      ),
    );
  }
}
