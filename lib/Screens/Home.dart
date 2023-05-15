// ignore_for_file: prefer_const_constructors, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient:
                  const LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.blue,
            Color.fromARGB(255, 109, 162, 206),
            Colors.blue,
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 28.0, top: 10),
                        child: CircleAvatar(
                            radius: 26,
                            child: Image.asset(
                              'icons/Menu.png', // replace this with the path to your image file
                              // width: 140,
                              // height: 40,
                              // color: Color.fromARGB(255, 247, 246, 246),
                            )))
                  ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuDjV_xzvLUnLL-4Adz7D0b14LZcgwFmkEiw&usqp=CAU"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Robert Fox",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "@robcrypto349",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 1, 6, 97),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 241, 238, 238)))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mining",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "000,000/000,000  " + "  Token A",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 300,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                                side: const BorderSide(
                                                    color: Colors.white,
                                                    width: 2),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80)),
                                                primary: Colors.white,
                                                backgroundColor: Colors.blue,
                                                minimumSize:
                                                    const Size.fromHeight(70)),
                                            onPressed: () {},
                                            child: const Text(
                                              "0.000,000",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                            SizedBox(
                            height: 20,
                          ),
                             Padding(
                               padding: const EdgeInsets.all(0.0),
                               child: Container(
                                margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 251, 251, 253),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      
                                        color: Color.fromRGBO(6, 161, 217, 0.298),
                                        blurRadius: 40,
                                        offset: Offset(0, 10))
                                  ]),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Image.asset("img/img1.png"),
                                      ),
                                      Container(
                                        // height: MediaQuery.of(context).size.height*0.3,
                                        width: MediaQuery.of(context).size.width*0.46,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                        color: Color.fromARGB(255, 1, 6, 97),

                                        ),
                                        child: Column(
                                          children: [
                                           SizedBox(height: 10,),
                                           
                                          Container(
                                            margin: EdgeInsets.all(6),
                                            padding: EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 1,color: Colors.green),
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white
                                            ),
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                  side: const BorderSide(
                                                      color: Colors.white,
                                                      width: 2),
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              80)),
                                                  primary: Colors.white,
                                                  backgroundColor: Colors.blue,
                                                  minimumSize:
                                                      const Size.fromHeight(40)),
                                              onPressed: () {},
                                              child: const Text(
                                                "10,459",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          Text(
                                                "out of 10,67809 A",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                    fontWeight: FontWeight.w800,color: Colors.white),
                                              ),
                                           SizedBox(height:10,),
                                           Container(
                                            margin: EdgeInsets.all(6),
                                            padding: EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 1,color: Colors.green),
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white
                                            ),
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                  side: const BorderSide(
                                                      color: Colors.white,
                                                      width: 2),
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              80)),
                                                  primary: Colors.white,
                                                  backgroundColor: Colors.white,
                                                  minimumSize:
                                                      const Size.fromHeight(40)),
                                              onPressed: () {},
                                              child: const Text(
                                                "10,459",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,color:Colors.blue),
                                              ),
                                            ),
                                          ),

                                          ],
                                        ),
                                      )

                                    ],
                                  )
                                  ,),
                             ),
                          SizedBox(
                            height: 40,
                          ),

                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 235, 235, 240),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 104, 105, 105)))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Notice",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Color.fromARGB(
                                                  255, 10, 1, 1)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 300,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                                side: const BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 40, 57, 243),
                                                    width: 1),
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                primary: Colors.black,
                                                backgroundColor:
                                                    Colors.transparent,
                                                minimumSize:
                                                    const Size.fromHeight(70)),
                                            onPressed: () {},
                                            child: const Text(
                                              "Today Trending Currency     2023-03-16",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
