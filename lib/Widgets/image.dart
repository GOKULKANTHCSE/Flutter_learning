import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kazuha Images',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: CachedNetworkImage(
            imageUrl:
                "https://static1.thegamerimages.com/wordpress/wp-content/uploads/2018/06/elsa-no-sense-1.jpg",
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
