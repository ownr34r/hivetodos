import 'package:flutter/material.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
