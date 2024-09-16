import 'package:flutter/material.dart';

void main() {
  runApp(HotelApp());
}

class Hotel {
  final String name;
  final int rating;
  final String description;
  final int price;
  final String image;

  Hotel({
    required this.name,
    required this.rating,
    required this.description,
    required this.price,
    required this.image,
  });
}

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  final List<Hotel> hotels = [
    Hotel(
      name: 'Songphunburi 1',
      price: 800,
      description: 'wifi included',
      rating: 3,
      image: 'images/hotel_01.jpg',
    ),
    Hotel(
      name: 'Songphunburi 2',
      price: 900,
      description: 'wifi included',
      rating: 2,
      image: 'images/hotel_02.jpg',
    ),
    Hotel(
      name: 'Songphunburi 3',
      price: 1200,
      description: 'wifi included',
      rating: 3,
      image: 'images/hotel_03.jpg',
    ),
    Hotel(
      name: 'Songphunburi 4',
      price: 1100,
      description: 'wifi included',
      rating: 3,
      image: 'images/hotel_04.jpg',
    ),
    Hotel(
      name: 'Songphunburi 5',
      price: 400,
      description: 'wifi included',
      rating: 3,
      image: 'images/hotel_05.jpg',
    ),
    Hotel(
      name: 'Songphunburi 6',
      price: 600,
      description: 'wifi included',
      rating: 3,
      image: 'images/hotel_06.jpg',
    ),
    Hotel(
      name: 'Songphunburi 7',
      price: 700,
      description: 'wifi included',
      rating: 3,
      image: 'images/hotel_07.jpg',
    ),
    Hotel(
      name: 'Songphunburi 8',
      price: 800,
      description: 'wifi included',
      rating: 3,
      image: 'images/hotel_08.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotel App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hotel App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: hotels.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (_, int index) {
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: InkWell(
                  onTap: () {
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                        child: Image.asset(
                          hotels[index].image,
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotels[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '\$${hotels[index].price}',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
