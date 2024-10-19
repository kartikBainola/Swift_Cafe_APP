import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seequenze_technologies/main.dart';

class CoffeeOrderPage extends StatefulWidget {
  final String name;
  final String image;
  final double rating;
  final int reviews;
  final String description;

  const CoffeeOrderPage({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.rating,
    required this.reviews,
  }) : super(key: key);

  @override
  _CoffeeOrderPageState createState() => _CoffeeOrderPageState();
}

class _CoffeeOrderPageState extends State<CoffeeOrderPage> {
  String cupFilling = 'Full';
  String milk = 'Full Cream Milk';
  String sugar = 'Sugar X2';
  bool isHighPriority = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3).r,
                  image: DecorationImage(
                      image: AssetImage('assets/image/Glass.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(16.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Color(0xffCDCDCD),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        fontSize: 18.r,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.rating.toString(),
                          style: TextStyle(
                            color: Color(0xffCDCDCD),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                            fontSize: 12.r,
                          ),
                        ),
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        Text(widget.reviews.toString(),
                            style: TextStyle(
                              color: Color(0xffCDCDCD),
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                              fontSize: 12.r,
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset('assets/image/veg-image.png')
                      ],
                    ),
                    8.verticalSpace,
                    Text(
                      widget.description,
                      style: TextStyle(
                          color: Color(0xffCDCDCD),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Inter',
                          fontSize: 10),
                    ),
                    16.verticalSpace,
                    Text('Choice of Cup Filling',
                        style: TextStyle(
                          color: Color(0xffCDCDCD),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontSize: 16.r,
                        )),
                    Wrap(
                      spacing: 8,
                      children: ['Full', '1/2 Full', '3/4 Full', '1/4 Full']
                          .map((fill) {
                        return ChoiceChip(
                          selectedColor: Colors.green,
                          showCheckmark: false,
                          labelStyle: TextStyle(color: Colors.black),
                          label: Text(fill),
                          selected: cupFilling == fill,
                          onSelected: (selected) {
                            setState(() => cupFilling = fill);
                          },
                        );
                      }).toList(),
                    ),
                    16.verticalSpace,
                    Text('Choice of Milk',
                        style: TextStyle(
                          color: Color(0xffCDCDCD),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontSize: 16.r,
                        )),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 4,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        'Skim Milk',
                        'Full Cream Milk',
                        'Almond Milk',
                        'Tone Cream Milk',
                        'Soy Milk',
                        'Oat Milk',
                        'Lactose Free Milk',
                      ].map((m) {
                        return Row(
                          children: [
                            Switch(
                              activeColor: Colors.green,
                              value: milk == m,
                              onChanged: (value) {
                                setState(() => milk = value ? m : milk);
                              },
                            ),
                            Flexible(
                                child: Text(m,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xffCDCDCD),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Inter',
                                      fontSize: 16.r,
                                    ))),
                          ],
                        );
                      }).toList(),
                    ),
                    16.verticalSpace,
                    Text('Choice of Sugar',
                        style: TextStyle(
                          color: Color(0xffCDCDCD),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontSize: 16.r,
                        )),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 4,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        'Sugar X1',
                        'Sugar X2',
                        '1/2 Sugar',
                        'No Sugar'
                      ].map((s) {
                        return Row(
                          children: [
                            Switch(
                              activeColor: Colors.green,
                              value: sugar == s,
                              onChanged: (value) {
                                setState(() => sugar = value ? s : sugar);
                              },
                            ),
                            Flexible(
                                child: Text(
                              s,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xffCDCDCD),
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Inter',
                                fontSize: 16.r,
                              ),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                    16.verticalSpace,
                    Center(
                      child: _navBar(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navBar() {
    return ClipRRect(
      child: Container(
        height: 70,
        margin: const EdgeInsets.only(right: 24, bottom: 24, left: 24),
        decoration: BoxDecoration(
          color: Colors.black38.withOpacity(0.5),
          // image: DecorationImage(image: AssetImage('assets/image/menubar.png')),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(
              value: isHighPriority,
              onChanged: (value) {
                setState(() => isHighPriority = value ?? false);
              },
              checkColor: Color(0xffCDCDCD),
            ),
            Text(
              'High Priority',
              style: TextStyle(
                  fontSize: 16.r,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  color: Color(0xffCDCDCD)),
            ),
            5.horizontalSpace,
            Icon(
              Icons.error,
              color: Colors.red,
              size: 16,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0).r,
              child: OutlinedButton(
                child: Text('Submit',
                    style: TextStyle(
                      color: Color(0xffCDCDCD),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                      fontSize: 16.r,
                    )),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.green,
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: () {
                  // Handle submission
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
