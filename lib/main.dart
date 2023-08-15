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

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(inputTextProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Column(
        children: [
          const Expanded(child: Home(title: 'Busca GIF')),
          Text(value)
        ],
      ),
    );
  }
}
