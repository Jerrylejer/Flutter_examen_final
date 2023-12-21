// OBJECT CLASS ############################################################
class Departement {
  // Le constructor
  Departement(this.nom, this.code, this.codeRegion);
  final String nom;
  final String code;
  final String codeRegion;
  // La factory pour la création de l'objet
  factory Departement.fromJson(Map<String, dynamic> json) {
    return Departement(
        // même principe pour accéder à l'objet "source" que pour "article"
        json['nom'],
        json['code'],
        json['codeRegion']);
  }
  // Les getters (si besoin)
  String get getNom => nom;
  String get getCode => code;
  String get getCodeRegion => codeRegion;
}

// LISTE CLASS ############################################################
class DepartementsList {
  // Le constructor
  DepartementsList({required this.departements});
  // Les propriétés
  final List<Departement> departements;
  // La factory pour la création de la liste d'objets (instances existantes)
  factory DepartementsList.fromJson(List<dynamic> parseJson) {
    // List<dynamic> parseJson = JSON décodé
    List<Departement> departements = <Departement>[];

    departements = parseJson.map((dep) => Departement.fromJson(dep)).toList();

    return DepartementsList(departements: departements);
  }
}
