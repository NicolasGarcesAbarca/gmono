import 'package:flutter/material.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: SizedBox(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Escriba que quiere buscar',
            ),
          ),
        )),
      ],
    );
  }
}
