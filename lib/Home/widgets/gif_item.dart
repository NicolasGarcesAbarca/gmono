import 'package:flutter/material.dart';

class GifItem extends StatelessWidget {
  const GifItem({Key? key, required this.url}) : super(key: key);
  final String? url;
  final backup =
      "https://media2.giphy.com/media/HycGUSe7OCmFG/200w_d.gif?cid=bbd455efai82xcffdaefrmhy7v8b2px0qd4haqng19idqci4&ep=v1_gifs_search&rid=200w_d.gif&ct=g";
  @override
  Widget build(BuildContext context) {
    if (url != null) {
      return SizedBox(
        height: 200.0,
        width: 700.0,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(url ?? backup),
        ),
      );
    }
    return Container(
      decoration: const BoxDecoration(color: Colors.amber),
      child: const Text("no url"),
    );
  }
}
