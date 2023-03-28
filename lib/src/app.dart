import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'models/images_model.dart';

import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var url = Uri.https('jsonplaceholder.typicode.com','/photos/$counter');
     var response = await http.get(url);
    if (response.statusCode == 200) {
      var imageModel = ImageModel.fromJson(json.decode(response.body));
      setState(() {
        images.add(imageModel);
      });
    }
  }

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("$counter"),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: const Text("Lets see some images!"),
        ),
      ),
    );
  }

}
