import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class InputText {
  final String inputText;

  const InputText({required this.inputText});
}

class InputTextNotifier extends StateNotifier<String> {
  InputTextNotifier({required String input}) : super(input);

  void setInput(String input) {
    state = input;
  }

  void emptyInput() {
    state = "";
  }
}
