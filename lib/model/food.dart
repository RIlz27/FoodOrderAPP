// ignore: camel_case_types
class food {
  final String nama;
  final String harga;
  final String rating;
  final String image;
  final String deskripsi;

  food(
      {required this.nama,
      required this.harga,
      required this.rating,
      required this.image,
      required this.deskripsi});
}

final List<food> itemFood = [
  food(
      nama: "Mie Goreng",
      harga: "Rp8.500",
      rating: "5.0",
      image: "assets/Nasi Goreng.jpeg",
      deskripsi: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  food(
    nama: "Nasi Goreng",
    harga: "Rp9.500",
    rating: "4.8",
    image: "assets/sangu (1).jpeg",
    deskripsi: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  food(
    nama: "Burger",
    harga: "Rp7.000",
    rating: "4.5",
    image: "assets/burger.jpeg",
     deskripsi: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  ),
  food(
    nama: "HotDog",
    harga: "Rp8.500",
    rating: "4.9",
    image: "assets/hotdog.jpeg",
     deskripsi: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  ),
  food(
    nama: "Pizza",
    harga: "Rp25.000",
    rating: "5.0",
    image: "assets/hotdog.jpeg",
     deskripsi: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  ),
  food(
    nama: "Kentang",
    harga: "Rp15.000",
    rating: "5.0",
    image: "assets/Kentang.jpeg",
     deskripsi: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  )
];
