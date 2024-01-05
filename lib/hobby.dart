class Hobby {
  final String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> gethobby() {
    return [
      Hobby(name: "ดู แมว", value: false),
      Hobby(name: "ดู ผีเสื้อ", value: false),
      Hobby(name: "ดู ขี้", value: false),
    ];
  }
}
