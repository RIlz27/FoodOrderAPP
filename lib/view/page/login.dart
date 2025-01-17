import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:d_info/d_info.dart';
import 'package:latihan_1/view/page/register.dart';
import 'package:latihan_1/view/widget/button_navigation.dart';
import '../widget/button_primary.dart';
import '../widget/mytextfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email == "test@email.com" && password == "123") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else {
      DInfo.snackBarError(context, "Email atau Password salah!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(
                Icons.food_bank_rounded,
                color: Color.fromARGB(255, 73, 54, 40),
                size: 120,
              ),
            ),
            Gap(30),
            const Text(
              "Selamat Datang\ndi Rilzy Food",
              style: TextStyle(
                  fontFamily: 'MyFont',
                  color: Color.fromARGB(255, 73, 54, 40),
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
            Gap(5),
            const Text(
              "Nikmati Kemudahan memesan\ndari mana saja",
              style: TextStyle(
                  fontFamily: 'MyFont',
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const Gap(20),
            MyTextField(
              controller: _emailController,
              hintText: " Email",
              icon: Icons.email,
              obscureText: false,
            ),
            const Gap(20),
            MyTextField(
              controller: _passwordController,
              hintText: " Password",
              icon: Icons.lock,
              obscureText: true,
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Belum punya akun? ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()))
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Color.fromARGB(255, 171, 136, 109),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(30),
            ButtonPrimary(
              buttonText: "LOGIN",
              onPressedAction: login,
            ),
          ],
        ),
      ),
    );
  }
}
