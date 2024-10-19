import 'package:flutter/material.dart';

import 'coffee_detail_page.dart';

class InstantBeverageCard extends StatelessWidget {
  final String name;
  final String image;
  final double rating;
  final int reviews;
  final String description;

  const InstantBeverageCard({
    Key? key,
    required this.name,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.description,
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
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white24.withOpacity(.10),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              color: Color(0xffCDCDCD))),
                      Row(
                        children: [
                          Text('$rating',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300)),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                          Text('($reviews)',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300)),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/image/veg-image.png')
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(description,
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        child:
                            Image.asset(image, fit: BoxFit.cover, height: 120),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: 10,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xff66A35C),
                              foregroundColor: Colors.white,
                            ),
                            child: Text('ADD')),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
