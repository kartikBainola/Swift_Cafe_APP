import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seequenze_technologies/Screens/accountscreen/Accountpage.dart';
import 'package:seequenze_technologies/Screens/cartScreen/Cartpage.dart';
import 'package:seequenze_technologies/Screens/chatScreen/Chatpage.dart';
import 'package:seequenze_technologies/Screens/walletScreen/Walletpage.dart';

import 'homescreen/Homepage.dart';

class Initscreen extends StatefulWidget {
  const Initscreen({super.key});

  @override
  State<Initscreen> createState() => _InitscreenState();
}

class _InitscreenState extends State<Initscreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const Homepage(),
    const Accountpage(),
    const Walletpage(),
    const Cartpage(),
    const Chatpage(),
  ];

  List<IconData> navIcon = [
    Icons.home_outlined,
    Icons.account_circle_outlined,
    Icons.account_balance_wallet_outlined,
    Icons.shopping_basket_outlined,
    Icons.mark_chat_unread_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            pages[currentSelectedIndex],

            // Bottom Navigation bar
            Align(alignment: Alignment.bottomCenter, child: _navBar()),
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
          // color: Colors.black38.withOpacity(0.5),
          image: DecorationImage(image: AssetImage('assets/image/menubar.png')),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: navIcon.map((icon) {
            int index = navIcon.indexOf(icon);
            bool isselected = currentSelectedIndex == index;
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          top: 15, bottom: 0, right: 10, left: 10),
                      child: CircleAvatar(
                        backgroundColor:
                            isselected ? Color(0xff2D2D2D) : Colors.transparent,
                        child: Icon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
