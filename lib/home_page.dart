import 'package:flutter/material.dart';
import 'package:pincode_verification/verification_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                // alignment: Alignment.center,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff41F0D1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/profile.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Hy, iMraN',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "for secure bank account we've logout\nplease, verify your account?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.3)),
            ),
            const SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, VerificationPage.id);
              },
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 95, 241, 195),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  'Yes, Verify Account',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 180),
              child: Text(
                'Need help?',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 90, 230, 223),
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
