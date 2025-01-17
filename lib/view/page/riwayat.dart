import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_1/model/history_model.dart';
import 'package:latihan_1/view/widget/card_history.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Riwayat Pesanan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              ],
            ),
            const Gap(10),
            Expanded(
                child: ListView.separated(
              itemCount: itemHistory.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return CardHistory(
                  tanggal: itemHistory[index].tanggal,
                  jumlah: itemHistory[index].jumlah,
                  
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}