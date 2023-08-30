// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'core/ui/theme/app_theme.dart';

import 'models/user_model.dart';
import 'pages/home/home_page.dart';
import 'pages/splash/splash00_page.dart';

class MyApp extends StatefulWidget {
  final String title;
  const MyApp({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Zoe Saldana',
      imgAvatar: 'https://i.pravatar.cc/300',
      birthday: '01/01/2023',
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vamos Cozinhar?',
        theme: MyAppTheme.themeData,
        initialRoute: '/',
        routes: {
          '/': (context) => const Splash00Page(),
          '/home': (ctx) => HomePageApp(title: widget.title),
        },

        onGenerateRoute: (settings) {
          if (settings.name == '/alguma-coisa') {
            return null;
          } else if (settings.name == '/outra-coisa') {
            return null;
          } else {
            return MaterialPageRoute(builder: (_) {
              return HomePageApp(title: widget.title);
            });
          }
        },
        // funciona tipo fosse uma página 404
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (_) {
            return HomePageApp(title: widget.title);
          });
        },
      ),
    );
  }
}
