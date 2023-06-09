import 'dart:convert';

Menu menuFromJson(String str) => Menu.fromJson(json.decode(str));

String menuToJson(Menu data) => json.encode(data.toJson());

class Menu {
  List<Ategory> ategories;

  Menu({
    required this.ategories,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    ategories: List<Ategory>.from(json["сategories"].map((x) => Ategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "сategories": List<dynamic>.from(ategories.map((x) => x.toJson())),
  };
}

class Ategory {
  int id;
  String name;
  String imageUrl;

  Ategory({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory Ategory.fromJson(Map<String, dynamic> json) => Ategory(
    id: json["id"],
    name: json["name"],
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image_url": imageUrl,
  };
}
