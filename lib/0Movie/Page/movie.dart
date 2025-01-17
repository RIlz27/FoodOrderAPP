// ignore_for_file: prefer_const_constructors
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: 195,
          width: 200,
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Stack(
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 187,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/Joker.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AspectRatio(
                    aspectRatio: 3 / 1,
                    child: ClipRect(
                      child: Center(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Color.fromARGB(53, 0, 0, 0),
                          child: Center(child: Text("movie Category", style: TextStyle(color: Colors.white, fontSize: 18),)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}