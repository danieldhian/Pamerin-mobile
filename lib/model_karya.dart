class Karya {
  final int id;
  final String kode;
  final String namakarya;
  final int harga;
  final String deskripsi;
  final int stok;

  Karya(
      {this.id = 0,
      this.kode = "",
      this.namakarya = "",
      this.harga = 0,
      this.deskripsi = "",
      this.stok = 0});

  factory Karya.fromJson(Map<String, dynamic> json) {
    return Karya(
      id: json['id'],
      kode: json['kode'],
      namakarya: json['nama_karya'],
      harga: json['harga'],
      deskripsi: json['deskrispi'],
      stok: json['stok'],
    );
  }
}
