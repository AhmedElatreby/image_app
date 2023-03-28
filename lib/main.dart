import 'package:flutter/material.dart';
import 'src/app.dart';

void main()  {
  runApp(App());
}

// import 'dart:convert';
//
// void main() {
//   var rawJson = '{"url": "https://via.placeholder.com/600/92c952", "id": 1}';
//
//   var parsedJson = json.decode(rawJson);
//   var imageModel = new ImageModel.fromJson(parsedJson);
//
//   print(imageModel.url);
// }
//
//
// class ImageModel {
//   int id=0;
//   String url="";
//
//   ImageModel(this.id, this.url);
//
//   ImageModel.fromJson(parsedJson) {
//     id = parsedJson['id'];
//     url = parsedJson['url'];
//   }
// }