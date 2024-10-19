import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seequenze_technologies/Screens/initscreen.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/background_image.jpeg'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Material(
                type: MaterialType.transparency,
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30).r,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/logos/logo.png'),
                          )),
                          Center(
                            child: Text(
                              'Swift',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 64,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Raleway'),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Café',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Raleway'),
                            ),
                          ),
                          8.verticalSpace,
                          Text(
                            '"Latte but never late"',
                            style: TextStyle(
                                color: Color(0xffABABAB),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                shadows: [
                                  Shadow(
                                      offset: const Offset(0, 0),
                                      blurRadius: 8,
                                      color: Colors.white.withOpacity(0.87)),
                                ],
                                fontSize: 14),
                          ),
                          30.verticalSpace,
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.white70),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          20.verticalSpace,
                          TextField(
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white70),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          30.verticalSpace,
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                gradient: LinearGradient(colors: [
                                  Color(0xff4D2B1A),
                                  Color(0xffA7745A)
                                ])),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Initscreen()));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.r,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                          20.verticalSpace,
                          OutlinedButton(
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                  fontFamily: 'Inter', fontSize: 20.r),
                            ),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: BorderSide(color: Colors.white),
                              minimumSize: Size(245, 46),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () {},
                          ),
                          20.verticalSpace,
                          TextButton(
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(fontFamily: 'Inter'),
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white70,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
