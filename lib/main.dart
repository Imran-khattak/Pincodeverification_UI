import 'package:flutter/material.dart';
import 'package:pincode_verification/home_page.dart';
import 'package:pincode_verification/verification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        VerificationPage.id: (context) => VerificationPage(),
      },
    );
  }
}
