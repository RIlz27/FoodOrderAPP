import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardFood extends StatelessWidget {
  final String nama;
  final String harga;
  final String rating;
  final String image;
  
  const CardFood({
    super.key, 
    required this.nama, 
    required this.harga, 
    required this.rating, 
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 2 / 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(10),
            // Nama makanan
            Text(
              nama,
              style: const TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 17,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const Gap(8),
            // Harga dan rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  harga,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Gap(5),
                    Text(rating),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
