// ignore_for_file: prefer_const_constructors, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

class MiningPage extends StatelessWidget {
  var list = [
    "img/List1.png",
    "img/List2.png",
    "img/List1.png",
    "img/List2.png",
    "img/List1.png",
    "img/List2.png",
    "img/List1.png",
    "img/List2.png",
  ];

  var list1 = [
    "img/Main1.png",
    "img/Main2.png",
    "img/List1.png",
    "img/List2.png",
    "img/Main1.png",
    "img/Main2.png",
    "img/List1.png",
    "img/List2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 74, 154, 219),
              borderRadius: BorderRadius.circular(0),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(248, 246, 245, 0.298),
                    blurRadius: 0,
                    offset: Offset(0, 10))
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 6, 54, 138))),
                        child: Image.asset("icons/Menu.png")),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                // height: 0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Text("000,000 /000,000 Token_A",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 45, 163, 248),
                                width: 1),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Colors.black,
                            backgroundColor: Color.fromARGB(255, 45, 163, 248),
                            minimumSize: const Size.fromHeight(70)),
                        onPressed: () {},
                        child: const Text(
                          "00:00:00",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 6, 17, 131),
                                width: 1),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Colors.black,
                            backgroundColor: Color.fromARGB(255, 6, 17, 131),
                            minimumSize: const Size.fromHeight(70)),
                        onPressed: () {},
                        child: const Text(
                          " Get Started ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 1)),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "NFT List",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                
                // padding: EdgeInsets.only(top:10),
                alignment: Alignment.center,
                // margin: EdgeInsets.only(top:10),
                color: Colors.white,
                height: 180,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  
                                  list[index],
                                  height: 120,
                                  width: MediaQuery.of(context).size.width,
                                )),
                            // SizedBox(height: 4),
                            Padding(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Center(
                                    child: Text("The Space 305",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  // 4.height,
                                  // Text(model.price,
                                  //     style: primaryTextStyle(color: learner_textColorSecondary)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.icecream_rounded,
                                        size: 15,
                                      ),
                                      Text(" 0.407 ETH",
                                          style: TextStyle(
                                            fontSize: 10,
                                            // fontWeight: FontWeight.bold
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      
                                      children: const [
                                        Icon(
                                          Icons.favorite_border,
                                          size: 15,
                                        ),
                                        Text(" 30  ",
                                            style: TextStyle(
                                              fontSize: 10,
                                              // fontWeight: FontWeight.bold
                                            )),
                                      ],
                                    ),
                                  ),
                               
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })),
              ),
              Container(
                // padding: EdgeInsets.only(top:10),
                alignment: Alignment.center,
                // margin: EdgeInsets.only(top:10),
                color: Colors.white,
                height: 180,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        margin: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  list1[index],
                                  height: 120,
                                )),
                            SizedBox(height: 4),
                            Padding(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Center(
                                    child: Text("The Space 305",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                               
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.icecream_rounded,
                                        size: 15,
                                      ),
                                      Text(" 0.407 ETH",
                                          style: TextStyle(
                                            fontSize: 10,
                                            // fontWeight: FontWeight.bold
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      
                                      children: const [
                                        Icon(
                                          Icons.favorite_border,
                                          size: 15,
                                        ),
                                        Text(" 30  ",
                                            style: TextStyle(
                                              fontSize: 10,
                                              // fontWeight: FontWeight.bold
                                            )),
                                      ],
                                    ),
                                  ),
                               
                                ],
                              ))
                          ],
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      )),
    );
  }
}
