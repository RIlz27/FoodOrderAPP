import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_1/0Movie/Model/moviemodel.dart';
import 'package:latihan_1/0Movie/Widget/card_movie.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Moviepage extends StatelessWidget {
  const Moviepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 15, 47),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft, 
              child: Text(
                "Find Your Best Movie",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white, 
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search movies...',
                hintStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: const Color.fromARGB(255, 21, 29, 59), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
              },
            ),
          ),
          const Gap(10),
          const Align(
            alignment: Alignment.centerLeft, 
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Now Playing",
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: itemmovie.length,
              itemBuilder: (context, index) {
                return ZoomTapAnimation(
                  child: Cardmovie(
                    nama: itemmovie[index].nama,
                    gambar: itemmovie[index].gambar,
                    genre: itemmovie[index].genre,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
