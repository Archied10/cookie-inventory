// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  String model;
  int pk;
  Fields fields;

  Item({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  int user;
  String name;
  int amount;
  String description;
  int rarity;
  String lcPath;
  int baseAtk;
  int baseHp;
  int baseDef;

  Fields({
    required this.user,
    required this.name,
    required this.amount,
    required this.description,
    required this.rarity,
    required this.lcPath,
    required this.baseAtk,
    required this.baseHp,
    required this.baseDef,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    user: json["user"],
    name: json["name"],
    amount: json["amount"],
    description: json["description"],
    rarity: json["rarity"],
    lcPath: json["lc_path"],
    baseAtk: json["base_atk"],
    baseHp: json["base_hp"],
    baseDef: json["base_def"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "name": name,
    "amount": amount,
    "description": description,
    "rarity": rarity,
    "lc_path": lcPath,
    "base_atk": baseAtk,
    "base_hp": baseHp,
    "base_def": baseDef,
  };
}
