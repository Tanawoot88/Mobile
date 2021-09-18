import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var answer = Random().nextInt(100);
    return Scaffold(
        appBar: AppBar(
          title: Text('GUESS THE NUMBER'),
        ),
        body: Container(
          color: Colors.black12,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                    children: [
                      Icon(
                        Icons.person, // รูปไอคอน
                        size: 80.0, // ขนาดไอคอน
                        color: Colors.pink, // สีไอคอน
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'สุพิชชา เมธากิจภาคิน', textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 20.00, color: Colors.indigo),
                            ),
                            Row(
                                children: [
                                  Icon(
                                    Icons.star, // รูปไอคอน
                                    size: 20.0, // ขนาดไอคอน
                                    color: Colors.pink, // สีไอคอน
                                  ),
                                  Icon(
                                    Icons.star, // รูปไอคอน
                                    size: 20.0, // ขนาดไอคอน
                                    color: Colors.pink, // สีไอคอน
                                  ),
                                  Icon(
                                    Icons.star, // รูปไอคอน
                                    size: 20.0, // ขนาดไอคอน
                                    color: Colors.pink, // สีไอคอน
                                  ),

                                  Icon(
                                    Icons.star, // รูปไอคอน
                                    size: 20.0, // ขนาดไอคอน
                                    color: Colors.pink, // สีไอคอน
                                  ),
                                  Icon(
                                    Icons.star_border, // รูปไอคอน
                                    size: 20.0, // ขนาดไอคอน
                                    color: Colors.pink, // สีไอคอน
                                  ),

                                ]
                            ),

                          ]
                      )
                    ]
                ),
                Text(
                  '${Random().nextInt(100)}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 120, color: Colors.indigo),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('RANDOM'),
                  ),
                ),
              ]
          ),
        )
    );
  }
}