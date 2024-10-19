import 'package:flutter/material.dart';
import 'package:seequenze_technologies/Screens/homescreen/components/coffee_detail_page.dart';

class PopularBeverageCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final double rating;
  final int reviews;

  const PopularBeverageCard({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.rating,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => CoffeeOrderPage(
                      image: '$image',
                      name: name,
                      description: description,
                      rating: rating,
                      reviews: reviews,
                    )));
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white24.withOpacity(.10),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 80),
            SizedBox(height: 8),
            Text(name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 18,
                    fontFamily: 'Inter')),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(description,
                        style: TextStyle(fontSize: 10, color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('$rating', style: TextStyle(fontSize: 12)),
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        Text('($reviews)', style: TextStyle(fontSize: 12)),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Image.asset('assets/image/add+button.png'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
