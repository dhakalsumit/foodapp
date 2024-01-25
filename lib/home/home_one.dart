import 'package:flutter/material.dart';

import 'package:foodapp/home/home_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageUrls = [
    "images/food1.jpg",
    "images/food2.jpg",
    "images/food3.jpg",
    "images/food4.jpg",
    "images/food5.jpg",
  ];
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
          const Column(
            children: [
              Text(
                'Popular Products',
                style: TextStyle(
                    fontSize: 20, height: 2, fontStyle: FontStyle.italic),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Stack(children: [
                  Container(
                    height: 200,
                    width: 200,
                    padding: const EdgeInsets.only(top: 30),
                    margin:
                        const EdgeInsets.only(top: 30, left: 10, right: 200),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 200,
                    padding: const EdgeInsets.only(top: 60),
                    margin:
                        const EdgeInsets.only(top: 60, left: 200, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  )
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
