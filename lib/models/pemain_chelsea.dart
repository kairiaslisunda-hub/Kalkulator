
import 'dart:convert';

Chelsea chelseaFromJson(String str) =>
    Chelsea.fromJson(json.decode(str));

String chelseaToJson(Chelsea data) =>
    json.encode(data.toJson());

class Chelsea {
  final List<Map<String, dynamic>> player;

  Chelsea({
    required this.player,
  });

  factory Chelsea.fromJson(Map<String, dynamic> json) => Chelsea(
        player: (json["player"] as List)
            .map((x) => Map<String, dynamic>.from(x))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        "player": player,
      };
}
