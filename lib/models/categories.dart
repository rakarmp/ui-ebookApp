class Categories {
  String? idKategori;
  String? namaKategori;
  String? kodeKategori;

  Categories({this.idKategori, this.namaKategori, this.kodeKategori});

  Categories.fromJson(Map<String, dynamic> json) {
    idKategori = json['id_kategori'];
    namaKategori = json['nama_kategori'];
    kodeKategori = json['kode_kategori'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_kategori'] = this.idKategori;
    data['nama_kategori'] = this.namaKategori;
    data['kode_kategori'] = this.kodeKategori;
    return data;
  }
}
