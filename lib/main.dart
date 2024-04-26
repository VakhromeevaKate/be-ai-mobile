import 'package:be_ai_mobile/screens/home.dart';
import 'package:be_ai_mobile/screens/signup.dart';
import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (BuildContext context) => const MainApp(),
      '/login': (BuildContext context) => LoginScreen(key: UniqueKey()),
      '/signup': (BuildContext context) => SignUpScreen(key: UniqueKey()),
      '/home': (BuildContext context) => HomeScreen(key: UniqueKey()),
    },
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('be.ai'),
          leading: const Icon(Icons.fastfood),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    backgroundColor: LightColors.kGreen,
                    foregroundColor: Colors.white
                ),
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(key: UniqueKey())));
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Login'),
              ),
            )
        ));
  }
}
