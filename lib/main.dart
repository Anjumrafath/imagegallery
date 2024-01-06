import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGallery(),
    );
  }
}

class ImageGallery extends StatelessWidget {
  final List<String> imageUrls = [
    'https://googleflutter.com/sample_image.jpg',
    'https://picsum.photos/250?image=9',
    'https://techcrunch.com/wp-content/uploads/2017/01/messaging-apps.jpg?w=1390&crop=1',
    'https://cdn.pixabay.com/photo/2016/04/14/07/56/icon-1328421_640.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          );
        },
      ),
    );
  }
}
