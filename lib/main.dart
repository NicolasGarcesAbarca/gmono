import 'package:flutter/material.dart';
import 'package:gmono/Home/models/input_text.dart';
import 'package:gmono/Home/screens/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const ProviderScope(child: App()));
}

final inputTextProvider =
    StateNotifierProvider<InputTextNotifier, String>((ref) {
  return InputTextNotifier(input: "boom");
});

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GMONO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const Home(title: 'Busca GIF'),
    );
  }
}
