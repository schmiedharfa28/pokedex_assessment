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
            width: double.infinity,
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
            child: Center(
              child: Stack(
                children: [
                  Column(
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
                        height: 200,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 24,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'Flutter ESB Technical Test',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
