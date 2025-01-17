import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardHistory extends StatelessWidget {
  final String tanggal;
  final String jumlah;


  
  const CardHistory({
    super.key, required this.tanggal, required this.jumlah, 
  });
  


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image placeholder (opsional, tambahkan jika perlu)
        
        const Gap(10),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Kolom untuk tanggal dan jumlah
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tanggal,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  jumlah,
                                  style: const TextStyle(
                                      fontSize: 17, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            // Icon panah di ujung kanan
                            const Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}