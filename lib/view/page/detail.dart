import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_1/model/food.dart';
import 'package:latihan_1/view/page/cartpage.dart'; // Import CartPage

class DetailPage extends StatelessWidget {
  final food item;

  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(item.image, fit: BoxFit.cover,)),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: double.infinity,
                    height: 25,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Detail
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.nama,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item.harga,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        const Gap(5),
                        Text(item.rating),
                      ],
                    ),
                  ),
                  const Gap(20),
                  SizedBox(
                    width: double.infinity,
                    height: 5,
                    child: Container(color: Colors.grey.shade100),
                  ),
                  const Gap(20),

                  // Deskripsi
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text('Keterangan',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(item.deskripsi),
                  ),
                  const Spacer(),
                  
                  // Tombol
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi untuk menambah item ke keranjang
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 73, 54, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              )
                            ),
                            child: const Text("TAMBAH KE KERANJANG", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800), ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {
                            // Navigasi ke halaman CartPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartPage()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            foregroundColor: Colors.black, // Warna teks
                          ),
                          child: const Text("CART", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12, fontWeight: FontWeight.w800),),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
