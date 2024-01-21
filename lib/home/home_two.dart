// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: PageView.builder(
          controller: pageController,
          itemBuilder: (context, position) {
            return Stack(children: [
              Container(
                height: 220,
                margin: const EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("images/food3.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  width: 240,
                  margin:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(children: [
                      const Text(
                        "Burger",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: Colors.blue,
                                      size: 17,
                                    )),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            ]);
          },
          itemCount: 5,
        ));
  
  }
}
