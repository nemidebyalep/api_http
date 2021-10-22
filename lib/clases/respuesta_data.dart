// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
       required this.datos,
      required  this.apoyo,
    });

    Datos datos;
    Apoyo apoyo;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        datos: Datos.fromJson(json["datos"]),
        apoyo: Apoyo.fromJson(json["apoyo"]),
    );

    Map<String, dynamic> toJson() => {
        "datos": datos.toJson(),
        "apoyo": apoyo.toJson(),
    };
}

class Apoyo {
    Apoyo({
       required this.url,
       required this.text,
    });

    String url;
    String text;

    factory Apoyo.fromJson(Map<String, dynamic> json) => Apoyo(
        url: json["url"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
    };
}

class Datos {
    Datos({
      required  this.id,
     required   this.correoElectrnico,
      required  this.firstName,
      required  this.lastName,
      required  this.avatar,
    });

    int id;
    String correoElectrnico;
    String firstName;
    String lastName;
    String avatar;

    factory Datos.fromJson(Map<String, dynamic> json) => Datos(
        id: json["id"],
        correoElectrnico: json["correo electrónico"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "correo electrónico": correoElectrnico,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
    };
}
