import 'package:flutter/material.dart';

class ClassWidget extends StatefulWidget {
  final String? name;
  final int roll;

  const ClassWidget({super.key, this.name, required this.roll});

  @override
  State<ClassWidget> createState() => _ClassWidgetState();
}

class _ClassWidgetState extends State<ClassWidget> {
  String? namee = "hi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "my name is ${namee} and i read in ${namee} class ${widget.roll}"),
      ),
      body: Column(children: [
        MaterialButton(
          color: Colors.green,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPressed: () {
            setState(() {
              namee = "heeehee";
            });
          },
          child: Text("Press me "),
        )
      ]),
    );
  }
}
