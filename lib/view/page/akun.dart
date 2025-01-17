import 'package:flutter/material.dart';
import 'package:latihan_1/view/page/login.dart';
import 'package:latihan_1/view/widget/button_primary.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun Saya", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0), // Warna teks akan menggantikan foregroundColor
                    ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/rilzy.jpg'), // ganti dengan path gambar profil Anda
            ),
            const SizedBox(height: 16),
            const Text(
              "Airil Jahran",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "test@email.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              "Kp.Margaluyu",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Spacer(),
            ButtonPrimary(
                    buttonText: "Log Out",
                    onPressedAction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors
                          .white, // Warna teks akan menggantikan foregroundColor
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
