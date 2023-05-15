// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'dart:ui';

import 'package:dapp_minting/Navigation/Bottom_Nav.dart';
import 'package:dapp_minting/Screens/Home.dart';
import 'package:dapp_minting/Screens/Login1.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.47,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 150.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  Image.asset(
                    'img/Astian-Logo.png', // replace this with the path to your image file
                    width: 190,
                    height: 190,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Container(
              height: 60,
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    primary: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(70)),
                onPressed: () {},
                child: const Text(
                  "Login with wallet",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 60,
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.white, width: 2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    primary: Colors.white,
                    backgroundColor: Colors.transparent,
                    minimumSize: const Size.fromHeight(70)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Login1())));
                },
                child: const Text(
                  "Join DApp",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 5),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
