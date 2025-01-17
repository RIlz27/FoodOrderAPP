import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

class Cardmovie extends StatelessWidget {
  final String nama;
  final String gambar;
  final String genre;
  const Cardmovie({
    super.key, required this.nama, required this.gambar, required this.genre
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      gambar,
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
                          height: 60,
                          width: double.infinity,
                          color: const Color.fromARGB(53, 0, 0, 0),
                          child: Center
                          (child: Column(
                            children: [
                              Text(nama, style: const TextStyle(color: Colors.white, fontSize: 15),),
                              Text(genre, style: const TextStyle(color: Colors.white, fontSize: 10),),
                            ],
                          ),),
                          // child: const Center(child: Text("movie Category", style: TextStyle(color: Colors.white, fontSize: 18),)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
