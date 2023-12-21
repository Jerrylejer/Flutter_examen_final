import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/communeLister.dart';

class CommunePage extends StatelessWidget {
  const CommunePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barre d'applications (AppBar)
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.45),
          title: const Text(
            "Communes :",
            // Aggrandissement de l'appBAR !!!
          )),

      body: const CommuneLister(regionCode: '', communes: ''),
    );
  }
}
