import 'package:dealsdray/pages/home.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController referralController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Let's Begin!",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Please enter your credentials to proceed",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    controller: emailController,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Create Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    controller: passwordController,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Referral Code (Optional)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    controller: referralController,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
