import 'package:flutter/material.dart';

class Walletpage extends StatelessWidget {
  const Walletpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/Glass.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Text(
            'Walletpage.......',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
