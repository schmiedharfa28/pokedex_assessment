import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokedex_assessment/about/about_detail.dart';
import 'package:pokedex_assessment/bottom_nav.dart';
import 'package:pokedex_assessment/favorite_screen.dart';
import 'package:pokedex_assessment/generation.dart/generation_1.dart';
import 'package:pokedex_assessment/homes_screen.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigation()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'assets/img/pokemon-party.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    child: Center(
                      child: Image.asset(
                        'assets/img/logo.png',
                        width: 105,
                        height: 105,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/img/poke-text.png',
                    width: 200,
                    height: 73,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Flutter ESB Technical Test',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300),
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
