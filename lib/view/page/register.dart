import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_1/view/page/login.dart';
import 'package:latihan_1/view/widget/button_primary.dart';
import 'package:latihan_1/view/widget/mytextfield.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginPageState();
}

class _LoginPageState extends State<Register> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  
  get Get => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle_rounded,
              color: Color.fromARGB(255, 73, 54, 40),
              size: 125,
            ),
            Gap(10),
            const Text(
              "Register",
               style: TextStyle(
                  fontFamily: 'MyFont',
                  color: Color.fromARGB(255, 73, 54, 40),
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
              ),
            const Gap(40),
            MyTextField(
              controller: _emailController,
              hintText: "Masukan Email",
              icon: Icons.email,
              obscureText: false,
            ),
            const Gap(20),
            MyTextField(
              controller: _passwordController,
              hintText: "Password",
              icon: Icons.lock,
              obscureText: true,
            ),
            const Gap(20),
            MyTextField(
              controller: _confirmPasswordController,
              hintText: "Confirm Password",
              icon: Icons.lock,
              obscureText: true,
            ),
            const Gap(20),
            ButtonPrimary(
              buttonText: "Register",
              onPressedAction: () {
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;

                if (password == confirmPassword) {
                  DInfo.snackBarSuccess(context, "Pendaftaran berhasil!");
                } else {
                  DInfo.snackBarError(context, "Password tidak cocok!");
                }
              },
            ),
            const Gap(20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()))
                  },
                  child: const Text(
                    "Kembali Ke Login",
                     style: TextStyle(
                      color: Color.fromARGB(255, 171, 136, 109),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
