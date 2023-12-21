import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/departementLister.dart';

class DepartementsPage extends StatelessWidget {
  const DepartementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Barre d'applications (AppBar)
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.45),
            title: const Text(
              'Nos Départements',
              // Aggrandissement de l'appBAR !!!
            )),
        body: const Flexible(child: DepartementLister()));
  }
}