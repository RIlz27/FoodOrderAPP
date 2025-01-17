class CartModel{
  final String id;
  final String nama;
  final String jumlah;
  final String harga;
  final String gambar;

  CartModel({required this.id, required this.nama, required this.jumlah, required this.harga, required this.gambar});
}

List<CartModel> itemCart = [
  CartModel(id: "1", nama: "Burger", jumlah: "1x", harga: "Rp.10.000", gambar: "assets/burger.jpeg"),
  CartModel(id: "2", nama: "Kentang Goreng", jumlah: "1x", harga: "Rp.20.000", gambar: "assets/Kentang.jpeg"),
];