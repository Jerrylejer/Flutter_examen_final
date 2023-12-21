class Commune {
  // constructeur
  Commune (
    this.nom,
    this.code,
    this.codeDepartement,
    this.siren,
    this.codeEpci,
    this.codeRegion,
    this.codesPostaux,
    this.population,
  );

  // Propriétés de la classe qui seront initialisées par
  // déclenché la méthode factory
  final String nom;
  final String code;
  final String codeDepartement;
  final String siren;
  final String codeEpci;
  final String codeRegion;
  final List<String> codesPostaux;
  final int population;

  // Méthode factory
  factory Commune.fromJson(Map<String, dynamic> json) {
    return Commune(
      json['nom'],
      json['code'],
      json['codeDepartement'],
      json['siren'],
      json['codeEpci'],
      json['codeRegion'],

      (json["codesPostaux"] as List).map((e) => e as String).toList(),
      json['population'],
    );
  }

  // getters
  String get getNom => nom;
  String get getCode => code;
  String get getCodeDepartement => codeDepartement;
  String get getSiren => siren;
  String get getCodeEpci => codeEpci;
  String get getCodeRegion => codeRegion;
  List<String> get getCodesPostaux => codesPostaux;
  int get getPopulation => population;
}

class CommuneList {
  // constructeur
  CommuneList({required this.communes});

  // propriété requise par le constructeur
  final List<Commune> communes;

  factory CommuneList.fromJson(List<dynamic> parseJson) {
    List<Commune> communes = <Commune>[];

    communes = parseJson.map((p) => Commune.fromJson(p)).toList();

    return CommuneList(communes: communes);
  }
}
 