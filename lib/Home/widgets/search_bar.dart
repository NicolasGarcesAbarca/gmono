import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gmono/main.dart';

class HeaderSearch extends ConsumerWidget {
  const HeaderSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          child: TextField(
            onChanged: (newValue) {
              ref.read(inputTextProvider.notifier).setInput(newValue);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Escriba que quiere buscar',
            ),
          ),
        )),
      ],
    );
  }
}
