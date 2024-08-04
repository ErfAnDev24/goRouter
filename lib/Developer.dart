class Developer {
  String name;
  String field;
  int experience;

  Developer(
      {required this.name, required this.field, required this.experience});

  factory Developer.fromMap(map) {
    return Developer(
        name: map['name'], field: map['field'], experience: map['experience']);
  }
}
