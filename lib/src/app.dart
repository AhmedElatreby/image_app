import 'dart:convert';

import 'package:flutter/material.dart';
import 'models/images_model.dart';
import 'widgets/image_list.dart';

import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    final url = Uri.https('jsonplaceholder.typicode.com', '/photos/$counter');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var imageModel = ImageModel.fromJson(json.decode(response.body));
      setState(() {
        images.add(imageModel);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Lets see some images!"),
        ),
      ),
    );
  }
}
