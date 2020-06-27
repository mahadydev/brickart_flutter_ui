import 'screens/loginscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xFFFF005E),
        scaffoldBackgroundColor: Color(0xffffffff),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              elevation: 10,
              color: Color(0xffffffff),
              brightness: Brightness.light,
            ),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat',
            ),
      ),
      home: LoginScreen(),
    );
  }
}
