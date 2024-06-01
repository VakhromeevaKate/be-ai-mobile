import 'package:be_ai_mobile/screens/display_picture_screen.dart';
import 'package:be_ai_mobile/screens/home.dart';
import 'package:be_ai_mobile/screens/meal.dart';
import 'package:be_ai_mobile/screens/questionnaire.dart';
import 'package:be_ai_mobile/screens/signup.dart';
import 'package:be_ai_mobile/screens/take_picture_screen.dart';
import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:localstorage/localstorage.dart';
import 'firebase_options.dart';
import './screens/login.dart';
import 'generated/l10n.dart';

late final ValueNotifier<int> notifier;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initLocalStorage();

  runApp(MaterialApp(
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
    initialRoute: '/',
    routes: {
      '/': (BuildContext context) => const MainApp(),
      '/login': (BuildContext context) => LoginScreen(key: UniqueKey()),
      '/signup': (BuildContext context) => SignUpScreen(key: UniqueKey()),
      '/questionnaire': (BuildContext context) => QuestionnaireScreen(key: UniqueKey()),
      '/home': (BuildContext context) => HomeScreen(key: UniqueKey()),
      '/camera': (BuildContext context) => TakePictureScreen(key: UniqueKey(), camera: firstCamera),
      '/gallery': (BuildContext context) => DisplayPictureScreen(key: UniqueKey(), imagePath: '', session: null),
      '/meal': (BuildContext context) => MealScreen(key: UniqueKey()),
    },
  ));
  FlutterNativeSplash.remove();
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).title),
            ]
          ),
          // leading: const Icon(Icons.fastfood),
          backgroundColor: LightColors.kLightGreen,
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icon.png'),
                    minRadius: 50,
                    maxRadius: 160,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: Text(
                        S.of(context).WelcomeToBEAI,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                        ),
                        textAlign: TextAlign.center
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                    fontSize: 32,
                                ),
                                backgroundColor: LightColors.kGreen,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            ),
                          onPressed: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(key: UniqueKey())));
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(S.of(context).Login),
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: Text(S.of(context).NoAccount),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                    fontSize: 32,
                                ),
                                backgroundColor: LightColors.kGreen,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            ),
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(key: UniqueKey())));
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(S.of(context).SighUp),
                        )
                    ),
                ),
              ],
            )
        ));
  }
}
