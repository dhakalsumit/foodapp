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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 50, top: 50),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nepal", style: Theme.of(context).textTheme.bodyLarge),
                    Row(
                      children: [
                        Text("Biratnagar",
                            style: Theme.of(context).textTheme.bodySmall),
                        const Icon(
                          Icons.arrow_drop_down_circle_rounded,
                          color: Colors.black45,
                        )
                      ],
                    )
                  ],
                ),
                InkWell(
                  child: Container(
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
                  ),
                )
              ],
            ),
          ),
          const SecPage(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  padding: const EdgeInsets.only(top: 30),
                  margin: const EdgeInsets.only(top: 30),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
