import 'package:flutter/material.dart';
import 'package:foodapp/home/home_two.dart';

class CustomView extends StatelessWidget {
  const CustomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("This is my sliver app bar"),
            floating: true,
          ),
          const SliverToBoxAdapter(child: SecPage()),
          SliverList.builder(
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                height: 200,
                width: double.infinity,
                color: Colors.red,
              );
            },
            itemCount: 20,
          )
        ],
      ),
    );
  }
}
