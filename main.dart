import 'package:flutter/material.dart';

class Shoe {
  final String title;
  final String type;
  final double price;
  final String imageUrl;

  Shoe({
    required this.title,
    required this.type,
    required this.price,
    required this.imageUrl,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Shoe> shoes = [
    Shoe(
      title: 'Nike SB Zoom Blazer',
      type: 'Mid Premium',
      price: 28.795,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/50d0490f-faba-4a8a-a056-16291abe440e/sb-zoom-blazer-mid-skate-shoes-LVGq5c.png',
    ),
    Shoe(
      title: 'Nike Air Zoom Pegasus',
      type: 'Men\'s Rood Running Shoes',
      price: 29.995,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/75acff44-c3b1-4afa-9e65-aa57019f18fc/structure-25-road-running-shoes-P72w0x.png',
    ),
    Shoe(
      title: 'Nike ZoomX Vaporfly',
      type: 'Men\'s Road Racing Shoe',
      price: 219.695,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7f3d7a6c-23d7-4248-93d1-e9481900b341/streakfly-road-racing-shoes-V17qZm.png',
    ),
    Shoe(
      title: 'Nike Air Force 1 S50',
      type: 'Older Kids\' Shoe',
      price: 26.295,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d98fd922-1a53-45ee-acf1-94d823f457d5/air-force-1-07-shoes-b0f549.png',
    ),
    Shoe(
      title: 'Nike Waffle One',
      type: 'Men\'s Shoes',
      price: 28.295,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/ab99f399-1dcd-4a62-9554-a7ed5baf3ce4/custom-air-max-1-shoes-by-you.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(shoes[index].imageUrl, width: 60),
              title: Text(shoes[index].title),
              subtitle: Text(shoes[index].type),
              trailing: Text('\$${shoes[index].price.toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}