import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/screens/auth/auth_screen.dart';
import 'package:whatsapp_clone/presentation/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.05),
                Text(
                  "Welcome to Whatsapp",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Image(
                  image: const AssetImage('assets/welcome.png'),
                  height: size.height * 0.25,
                  color: Colors.teal,
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Text(
                  'Read our Privacy Policy. Tap "Agree and continue" to\n accept the Teams of Service',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SizedBox(
                  width: size.width * 0.75,
                  child: CustomElevatedButton(
                      btnTitle: 'AGREE AND CONTINUE',
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AuthScreen()));
                      }),
                ),
                SizedBox(
                  height: size.height * 0.21,
                ),
                const Text('form'),
                const Text('F A C E B O O K'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
