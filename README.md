# A new Flutter project.

```dart
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
```

![img_1.png](img_1.png)