import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String gambar;
  final String nama;
  const CardCategory({super.key, required this.gambar, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                gambar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AspectRatio(
              aspectRatio: 3 / 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: Text(
                      nama,
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Tambahkan ikon di pojok kiri atas
          const Positioned(
            top: 10,
            left: 10,
            child: Icon(
              Icons.food_bank_outlined, // Ganti ikon sesuai kebutuhan
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
