import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "BE AI",
        theme: ThemeData(
            primaryColor: const Color.fromRGBO(50, 65, 85, 1),
            textTheme:
                const TextTheme(titleLarge: TextStyle(color: Colors.white))),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('be.ai'),
          leading: const Icon(Icons.fitness_center),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: (const LoginForm()),
        ));
  }
}
