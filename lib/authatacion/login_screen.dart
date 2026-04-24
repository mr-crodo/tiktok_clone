import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/input_text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset('assets/tiktok.png', width: 200),
              Text(
                'Welcome',
                style: GoogleFonts.inter(
                  fontSize: 34,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Glad to see you",
                style: GoogleFonts.inter(
                  fontSize: 34,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              //todo: email input
              InputTextWidget(
                textEditingController: emailTextEditingController,
                labelString: 'Email',
                iconData: Icons.email_outlined,
                isObscure: false,
              ),

              //todo: password input
              InputTextWidget(
                textEditingController: passwordTextEditingController,
                labelString: 'Password',
                iconData: Icons.lock_outline,
                isObscure: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
