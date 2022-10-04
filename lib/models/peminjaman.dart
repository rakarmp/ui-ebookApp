class peminjaman {
  int? idUser;
  String? kodeBuku;
  int? inputHari;
  String? tanggalPeminjaman;

  peminjaman(
      {this.idUser, this.kodeBuku, this.inputHari, this.tanggalPeminjaman});

  peminjaman.fromJson(Map<String, dynamic> json) {
    idUser = json['id_user'];
    kodeBuku = json['kode_buku'];
    inputHari = json['input_hari'];
    tanggalPeminjaman = json['tanggal_peminjaman'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_user'] = this.idUser;
    data['kode_buku'] = this.kodeBuku;
    data['input_hari'] = this.inputHari;
    data['tanggal_peminjaman'] = this.tanggalPeminjaman;
    return data;
  }
}