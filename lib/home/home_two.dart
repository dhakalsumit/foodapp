import 'package:flutter/material.dart';

class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  final List<String> imageUrls = [
    "images/food1.jpg",
    "images/food2.jpg",
    "images/food3.jpg",
    "images/food4.jpg",
    "images/food5.jpg",
  ];
  final List<String> dataList = [
    'Ice cream',
    'Golo Golo Dalla ',
    'Burger',
    'Momo',
    'fish curry',
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    image: DecorationImage(
                      image: AssetImage(imageUrls[position]),
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
                          offset: const Offset(0, 3),
                        )
                      ]),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(children: [
                      Text(
                        dataList[position],
                        style: const TextStyle(
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
                                (index) => const Icon(
                                      Icons.star,
                                      color: Colors.blue,
                                      size: 17,
                                    )),
                          ),
                          const Padding(padding: EdgeInsets.only(right: 60)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "2530 ",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                "comments ",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("RS 560",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700))
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
