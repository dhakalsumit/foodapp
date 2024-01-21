

import 'package:flutter/material.dart';
import 'package:foodapp/home/home_two.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 50, top: 50),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Nepal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 25),
                    ),
                    Row(
                      children: [
                        Text(
                          "Biratnagar",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black45),
                        ),
                        Icon(
                          Icons.arrow_drop_down_circle_rounded,
                          color: Colors.black45,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade300,
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        
        SecPage()],
      ),
    );
  }
}
