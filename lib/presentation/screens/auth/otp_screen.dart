import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/presentation/screens/home_screen/home_screen.dart';
import 'package:whatsapp_clone/presentation/widgets/custom_elevated_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.4),
          Column(
            children: [
              Text(
                "Code has been sent to +91 11******19",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  otpControllers.length,
                  (index) => Container(
                    margin: const EdgeInsets.only(left: 8),
                    height: 50,
                    width: 50,
                    child: TextField(
                      maxLengthEnforcement: MaxLengthEnforcement.none,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.025),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Text(
                  "Resend code in 56 sec",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: size.height * 0.025),
            ],
          ),
          SizedBox(height: size.height * 0.25),
          SizedBox(
              width: size.width * 0.8,
              height: 40,
              child: CustomElevatedButton(
                  btnTitle: 'V E R I F Y   O T P',
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  })),
          SizedBox(height: size.height * 0.025),
        ],
      ),
    ));
  }
}
