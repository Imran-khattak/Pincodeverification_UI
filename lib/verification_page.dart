import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class VerificationPage extends StatelessWidget {
  VerificationPage({Key? key}) : super(key: key);
  static String id = 'verification_page';
  final RoundedLoadingButtonController _btnControllerSuccess =
      RoundedLoadingButtonController();

  void _onPressedSuccess() async {
    Timer(const Duration(seconds: 3), () {
      _btnControllerSuccess.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      CupertinoIcons.back,
                      size: 35,
                      color: Color.fromARGB(255, 90, 233, 185),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      size: 35,
                      color: Color.fromARGB(255, 90, 233, 185),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 229, 249, 249),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    'Verify Account',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 42, 199, 227)),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Please enter the verification code\nwe sent to your mobile **92',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.5)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                '01:36',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 95, 241, 195),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Resend again?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.4)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: true,
                obscuringCharacter: '*',
                enabled: true,
                keyboardType: TextInputType.phone,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeColor: const Color.fromARGB(255, 136, 248, 212),
                  inactiveColor: const Color.fromARGB(255, 136, 248, 212),
                ),
                onChanged: ((value) {}),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RoundedLoadingButton(
                controller: _btnControllerSuccess,
                onPressed: _onPressedSuccess,
                successIcon: Icons.check,
                successColor: Colors.green,
                width: 150,
                loaderSize: 24.0,
                color: const Color.fromARGB(255, 95, 241, 195),
                child: const Text(
                  'Verify',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                )),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                _btnControllerSuccess.reset();
              },
              child: Text('Reset?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.6),
                    decoration: TextDecoration.underline,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
