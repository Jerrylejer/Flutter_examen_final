import 'dart:convert';

import 'package:flutter_examen1/models/departement.dart';
import 'package:http/http.dart' as http;

class DepartementService {
  // Pour le navigateur 

  static Future<DepartementsList?> getDepartements(String regionCode) async {
    String apiUrl = "https://geo.api.gouv.fr/regions/$regionCode/departements";
    try {
      final response = await http
          .get(Uri.parse(apiUrl), headers: {"Accept": "application/json"});

      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final jsonResponse = json.decode(response.body);
          final DepartementsList departments = DepartementsList.fromJson(jsonResponse);
          if (departments.departements.isNotEmpty) {
            return departments;
          } else {
            return null;
          }
        } else {
          return null;
        }
      } else {
        throw Exception("impossible de charger les départements");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Erreur dans le chargement de la liste des départements");
    }
  }
}