// ignore_for_file: unnecessary_new, prefer_const_constructors, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, avoid_print

import 'dart:ui';

import 'package:dapp_minting/Navigation/Bottom_Nav.dart';
import 'package:dapp_minting/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  final connector = WalletConnect(
    bridge: 'https://bridge.walletconnect.org',
    clientMeta: PeerMeta(
      name: 'WalletConnect',
      description: 'WalletConnect Developer App',
      url: 'https://URLwalletconnect.org',
      icons: [
        'https://gblobscdn.gitbook.com/spaces%2F-LJJeCjcLrr53DcT1Ml7%2Favatar.png?alt=media'
      ],
    ),
  );

  var _session, session;
  var uri = "";
  void Collect_Wallet(BuildContext context) async {
    print("{hghygh}1");
    if (!connector.connected) {
      try {
        print("{hghygh}");

        session = await connector.createSession(
          onDisplayUri: (_uri) async {
            chainId:
            4160;
            uri = _uri;
            print(_uri);
            var url = _uri;
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        );

        setState(() {
          _session = session;
        });

        print(session);
        print("text");
      } catch (e) {
        print(e);
      }
    }
    // Create a connector
  }

  @override
  Widget build(BuildContext context) {
    connector.on('connect', (session) {
      setState(() {
        _session = session;
      });
    });
    connector.on('session_update', (payload) => print(payload));
    connector.on('disconnect', (session) => print(session));

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
                    'icons/Astian.png', // replace this with the path to your image file
                    width: 190,
                    height: 190,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            _session == null
                ? Container(
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
                      onPressed: () {
                        Collect_Wallet(context);
                      },
                      child: const Text(
                        "Connect wallet",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                    ),
                  )
                : Text("connect"),
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
                      MaterialPageRoute(builder: ((context) => Bottom_Nav())));
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
