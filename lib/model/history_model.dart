class History {
  final String id;
  final String tanggal;
  final String jumlah;

  

  History({
    required this.id,
    required this.tanggal,
    required this.jumlah,

    
  });
}

List<History> itemHistory = [
  History(
    id: "1",
    tanggal: "01 November",
    jumlah: "Rp.100.000",

    
  ),
  History(
    id: "2",
    tanggal: "10 November",
    jumlah: "Rp.50.000",

    
  ),
  History(
    id: "3",
    tanggal: "05 November",
    jumlah: "Rp.30.000",


 ),
];