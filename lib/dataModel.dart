// To parse this JSON data, do
//
//     final notes = notesFromJson(jsonString);

import 'dart:convert';

List<Notes> notesFromJson(String str) =>
    List<Notes>.from(json.decode(str).map((x) => Notes.fromJson(x)));

String notesToJson(List<Notes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Notes {
  Notes({
    this.heading,
    this.dates,
    this.note,
  });

  String? heading;
  String? dates;
  String? note;

  factory Notes.fromJson(Map<String, dynamic> json) => Notes(
        heading: json["heading"],
        dates: json["date"],
        note: json["note"],
      );

  Map<String, dynamic> toJson() => {
        "heading": heading,
        "date": dates,
        "note": note,
      };
}
