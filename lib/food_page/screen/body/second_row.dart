import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/image_url.dart';

class SecondRow extends StatefulWidget {
  const SecondRow({super.key});

  @override
  State<SecondRow> createState() => _SecondRowState();
}

class _SecondRowState extends State<SecondRow> {
  final SecondRowImageUrl imageUrls = SecondRowImageUrl();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.secondRowImageUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageDetailScreen(
                        imageUrl: imageUrls.secondRowImageUrls[index]),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrls.secondRowImageUrls[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ));
        })

    ;
  }
}

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;

  ImageDetailScreen({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Detail')),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(imageUrl),
          ),
        ),
      ),
    );
  }
}
