import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_1/model/cart_model.dart';
import 'package:latihan_1/view/page/category.dart';
import 'package:latihan_1/view/page/pesanan_page.dart';
import 'package:latihan_1/view/widget/button_primary.dart';
import 'package:latihan_1/view/widget/card_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Header Pesanan
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Pesanan",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Category()));
                    },
                    child: const Text("Tambah pesanan",
                        style: TextStyle(
                            color: Color.fromARGB(2255, 73, 54, 40)))),
              ],
            ),
            const Gap(10),

            // Daftar Pesanan
            Expanded(
              child: ListView.separated(
                itemCount: itemCart.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return CardCart(
                    nama: itemCart[index].nama,
                    jumlah: itemCart[index].jumlah,
                    harga: itemCart[index].harga,
                    gambar: itemCart[index].gambar,
                  );
                },
              ),
            ),

            // Total Harga dan Tombol Pesan
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Total Harga
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Harga",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                        "Rp. 30.000",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Gap(10),

                  // Tombol Pesan
                  ButtonPrimary(
                    buttonText: "Pesan",
                    onPressedAction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PemesananPage()),
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
          ],
        ),
      ),
    );
  }
}
