import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<String>? imageUrls;

  const GalleryScreen(this.imageUrls, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rabbit\'s guests Animations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            Card(
              child: SizedBox(
                height: 200,
                child: Hero(
                  tag: 'rabbit hero',
                  child: FadeInImage(
                      placeholder:
                          const AssetImage('assets/images/placeholder.jpg'),
                      image: NetworkImage(imageUrls![0])),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 200,
                child: FadeInImage(
                  placeholder:
                      const AssetImage('assets/images/placeholder.jpg'),
                  image: NetworkImage(imageUrls![1]),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 200,
                child: FadeInImage(
                  placeholder:
                      const AssetImage('assets/images/placeholder.jpg'),
                  image: NetworkImage(imageUrls![2]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
