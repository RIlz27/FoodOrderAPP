// ignore: camel_case_types
class movie {
  final String nama;
  final String gambar;
  final String genre;

  movie(
      {required this.nama,
      required this.gambar,
      required this.genre
      });
}

final List<movie> itemmovie = [
  movie(
    nama: "Joker: Folie a Deux",
    gambar: "assets/Joker.jpg",
    genre: "Crime,Drama,Triler"
    ),
  movie(
    nama: "The United Way",
    gambar: "assets/MU.jpg",
       genre: "Sport,Documentary"
  ),
  movie(
    nama: "The Lord Of The Rings",
    gambar: "assets/The Lord Of The Rings.jpg",
       genre: "Adventure,Fantasy"
  ),
  movie(
    nama: "Agatha All Along",
    gambar: "assets/Agatha.jpg",
       genre: "Dark Fantasy,Supernatural"),
  movie(
    nama: "Beetlejuice Beetlejuice",
    gambar: "assets/BEET.jpg",
       genre: "Dark Comedy, Dark Fantasy"),
  movie(
    nama: "Deadpool & Wolverine",
    gambar: "assets/deadpool.jpeg",
       genre: "Superhero,Comedy"),
  movie(
    nama: "The Boys",
    gambar: "assets/the boys.jpg",
       genre: "Action,Crime"),
  movie(
    nama: "Sumala",
    gambar: "assets/SUMALA.jpg",
       genre: "Horror,Triler"),
];
