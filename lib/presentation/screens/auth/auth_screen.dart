import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/screens/auth/otp_screen.dart';
import 'package:whatsapp_clone/presentation/widgets/custom_elevated_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _mobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.08),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Enter your phone number',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: size.width * 0.05),
                const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            const Text(
              'WhatsApp will need to verify your phone number. What’s \nmy number?',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              width: size.width * 0.85,
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.15),
              padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.3, color: Colors.teal))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    'India',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(width: size.width * 0.01),
                  const Spacer(),
                  const Icon(Icons.expand_more_sharp)
                ],
              ),
            ),
            SizedBox(height: size.height * 0.005),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.15,
                  margin: EdgeInsets.only(left: size.width * 0.15),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '+  91',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                      focusedBorder: _textfieldBorder(),
                      enabledBorder: _textfieldBorder(),
                      border: _textfieldBorder(),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.50,
                  margin: EdgeInsets.only(right: size.width * 0.15),
                  child: TextField(
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    controller: _mobileNumberController,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      hintText: 'Enter your number',
                      contentPadding: const EdgeInsets.only(left: 8.0),
                      focusedBorder: _textfieldBorder(),
                      enabledBorder: _textfieldBorder(),
                      border: _textfieldBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            const Text('Career charges may apply*'),
            SizedBox(height: size.height * 0.16),
            SizedBox(
              width: size.width * 0.20,
              child: CustomElevatedButton(
                btnTitle: 'NEXT',
                onTap: () {
                  if (_mobileNumberController.text.trim().length == 10) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (constext) => const OtpScreen(),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      )),
    );
  }

  UnderlineInputBorder _textfieldBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.teal, width: 2),
    );
  }
}
