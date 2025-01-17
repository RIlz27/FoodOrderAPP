import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_1/controler/food_controller.dart';
import 'package:latihan_1/model/food.dart';
import 'package:latihan_1/view/widget/card_food.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:get/get.dart'; // Import GetX

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan Get.put untuk mendeklarasikan FoodController
    final FoodController foodController = Get.put(FoodController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hasil Pencaharian",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // Subheading
            const Gap(10),

  

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Kategori",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: itemFood.length,
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                    onTap: () {
                      // Menggunakan foodController untuk membuka halaman detail
                      foodController.openDetailsPage(itemFood[index]);
                    },
                    child: CardFood(
                      nama: itemFood[index].nama,
                      harga: itemFood[index].harga,
                      rating: itemFood[index].rating,
                      image: itemFood[index].image,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
