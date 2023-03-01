// To parse this JSON data, do
//
//     final noteModel = noteModelFromJson(jsonString);

import 'dart:convert';

NoteModel noteModelFromJson(String str) => NoteModel.fromJson(json.decode(str));

String noteModelToJson(NoteModel data) => json.encode(data.toJson());

class NoteModel {
    NoteModel({
        this.id,
        this.title,
        this.description,
        this.priority,
        this.date,
    });

    int? id;
    String? title;
    String? description;
    int? priority;
    String? date;


  //Extract a note object from a map object
     NoteModel.fromJson(Map<String, dynamic> json) {
       json["_id"];
       json["_title"];
       json["_description"];
       json["_priority"];
       json["_date"];
     }
        
    
 // convert note object into map object
    Map<String, dynamic> toJson() => {
        "_id": id,
        "_title": title,
        "_description": description,
        "_priority": priority,
        "_date": date,
    };
}
