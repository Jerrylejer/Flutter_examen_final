import 'dart:convert';

import 'package:flutter_examen1/models/commune.dart';
import 'package:http/http.dart' as http;

class CommuneService {
  // Pour le navigateur 

  static Future<CommuneList?> getCommunes(String communeCode) async {
    String apiUrl = "https://geo.api.gouv.fr/departements/$communeCode/communes";
    try {
      final response = await http
          .get(Uri.parse(apiUrl), headers: {"Accept": "application/json"});

      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final jsonResponse = json.decode(response.body);
          final CommuneList communes = CommuneList.fromJson(jsonResponse);
          if (communes.communes.isNotEmpty) {
            return communes;
          } else {
            return null;
          }
        } else {
          return null;
        }
      } else {
        throw Exception("impossible de charger les communes");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Erreur dans le chargement de la liste des communes");
    }
  }
}