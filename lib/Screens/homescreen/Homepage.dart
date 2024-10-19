import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/instant_Bev_card.dart';
import 'components/popular_bev_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/Glass.png'),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _buildHeader(),
                _buildSearchBar(),
                Expanded(
                  child: ListView(
                    children: [
                      20.verticalSpace,
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 285,
                          decoration: BoxDecoration(
                              color: Colors.black38.withOpacity(0.45.r)),
                          child: _buildPopularBeverages()),
                      20.verticalSpace,
                      _buildInstantBeverages(),
                    ],
                  ),
                ),
                94.verticalSpace
              ],
            ),
          )),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0).r,
      child: Row(
        children: [
          Image.asset('assets/image/waving-hand-sign.png'),
          10.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '20/12/2022',
                style: TextStyle(
                    color: Color(0xffB6B6B6),
                    fontSize: 13.r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300),
              ),
              Text(
                  'Joshua '
                  'Scanlan',
                  style: TextStyle(
                      color: Color(0xffB6B6B6),
                      fontSize: 18.r,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500))
            ],
          ),
          Spacer(),
          Image.asset('assets/image/cart.png'),
          Image.asset('assets/image/account profile.png')
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0).r,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search favorite Beverages',
          hintStyle: TextStyle(
            color: Color(0xffBBBBBC),
            fontWeight: FontWeight.w300,
            fontFamily: 'Inter',
            fontSize: 12.r,
          ),
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Color(0xffBBBBBC),
          suffixIconColor: Color(0xffBBBBBC),
          suffixIcon: Icon(Icons.tune),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                width: 1, style: BorderStyle.solid, color: Color(0xffE7E7E7)),
          ),
        ),
      ),
    );
  }

  Widget _buildPopularBeverages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Most Popular Beverages',
              style: TextStyle(
                  fontSize: 18.r,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  color: Color(0xffB6B6B6))),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              PopularBeverageCard(
                image: 'assets/image/Coffee231.png',
                name: 'Hot Cappuccino',
                description: 'Espresso, Steamed Milk',
                rating: 4.9,
                reviews: 458,
              ),
              // Add more PopularBeverageCard widgets here
              PopularBeverageCard(
                image: 'assets/image/Coffee21.png',
                name: 'Hot Cappuccino',
                description: 'Espresso, Steamed Milk',
                rating: 4.9,
                reviews: 458,
              ),
              PopularBeverageCard(
                image: 'assets/image/blackCoffee21.png',
                name: 'Hot Cappuccino',
                description: 'Espresso, Steamed Milk',
                rating: 4.9,
                reviews: 458,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInstantBeverages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0).r,
          child: Text('Get it instantly',
              style: TextStyle(
                  fontSize: 18.r,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  color: Color(0xffB6B6B6))),
        ),
        Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              InstantBeverageCard(
                name: 'Lattè',
                image: 'assets/image/coffee.png',
                rating: 4.9,
                reviews: 458,
                description:
                    'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
              ),
              // Add more InstantBeverageCard widgets here
              InstantBeverageCard(
                name: 'Flat White',
                image: 'assets/image/Flat white.png',
                rating: 4.9,
                reviews: 458,
                description:
                    'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
