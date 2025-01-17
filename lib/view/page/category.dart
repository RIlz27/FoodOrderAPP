import 'package:flutter/material.dart';
import 'package:latihan_1/model/categorymodel.dart';
import 'package:latihan_1/view/page/search.dart';
import 'package:latihan_1/view/widget/button_navigation.dart';
import 'package:latihan_1/view/widget/card_category.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Food Category",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Text("our daily healty good"),

           Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyHomePage()))
                  },
                  child: const Text(
                    "Back To Home",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),

          const SizedBox(height: 15,),
          Expanded(
            child: GridView.builder(
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: itemCategory.length,
              itemBuilder: (context, index) {
                return ZoomTapAnimation(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Search()))
                  },
                  child: CardCategory(
                    gambar: itemCategory[index].gambar,
                    nama: itemCategory[index].nama,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
