import 'package:flutter/material.dart';
import 'package:latihan_1/view/page/riwayat.dart';
import 'package:latihan_1/view/widget/button_primary.dart';

class PemesananPage extends StatelessWidget {
  const PemesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Proses'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Proses Pemesanan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Image.network(
                'assets/dapur.jpg', // Ganti dengan URL gambar yang sesuai
                height: 200,
              ),
            ),
            const SizedBox(height: 16),
            const Divider(),
            _buildOrderStatusSection(),
            const Divider(),
            _buildEstimateTimeSection(),
            const Divider(),
            _buildDriverInfoSection(),
            const Spacer(),
             ButtonPrimary(
                    buttonText: "SELESAI",
                    onPressedAction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Riwayat()),
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

  Widget _buildOrderStatusSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Status',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          'Pesanan diterima',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildEstimateTimeSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Estimasi Waktu',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          '15-20 Menit',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildDriverInfoSection() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'assets/ahay.jpg', // Ganti dengan URL gambar pengemudi yang sesuai
          ),
          radius: 25,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Kang Azhar',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'F 2124 YO',
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
          ],
        ),
      ],
    );
  }
}