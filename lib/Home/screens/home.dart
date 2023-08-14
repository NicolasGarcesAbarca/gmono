import 'package:flutter/material.dart';
import 'package:gmono/Home/widgets/search_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: HeaderSearch()),
    );
  }
}
