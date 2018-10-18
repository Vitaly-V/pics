import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  
  ImageList(this.images);

  Widget build (context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      margin: EdgeInsets.all(10.00),
      padding: EdgeInsets.all(10.00),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey
        ),
      ),
      child: Column(
          children: <Widget> [
            Image.network(image.url),
            Text(image.title),
      ]),
    );
  }
}