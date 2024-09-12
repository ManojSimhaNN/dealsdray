import 'package:dealsdray/pages/register.dart';
import 'package:dealsdray/pages/verification.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Glad to see you!',
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Please provide your phone number',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Phone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: FloatingActionButton.extended(
                label: const Text(
                  'Send OTP',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: const Color.fromARGB(255, 134, 13, 4),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Verification(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: FloatingActionButton.extended(
                label: const Text(
                  'Register User',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: const Color.fromARGB(255, 134, 13, 4),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Register(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
