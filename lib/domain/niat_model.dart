class NiatModel {
  int? id;
  String? name;
  String? arabic;
  String? latin;
  String? terjemahan;
  NiatModel({
    this.arabic,
    this.id,
    this.latin,
    this.name,
    this.terjemahan,
  });
  NiatModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
    latin = json['latin'];
    terjemahan = json['terjemahan'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'arabic': arabic,
      'latin': latin,
      'terjemahan': terjemahan,
    };
  }
}
