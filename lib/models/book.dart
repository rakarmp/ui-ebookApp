class BookList {
  int? idBerkas;
  String? namaBerkas;
  String? namaKategori;
  String? namaPenulis;
  String? namaGambar;

  BookList(
      {this.idBerkas,
      this.namaBerkas,
      this.namaKategori,
      this.namaPenulis,
      this.namaGambar});

  BookList.fromJson(Map<String, dynamic> json) {
    idBerkas = json['id_berkas'];
    namaBerkas = json['nama_berkas'];
    namaKategori = json['nama_kategori'];
    namaPenulis = json['nama_penulis'];
    namaGambar = json['nama_gambar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_berkas'] = this.idBerkas;
    data['nama_berkas'] = this.namaBerkas;
    data['nama_kategori'] = this.namaKategori;
    data['nama_penulis'] = this.namaPenulis;
    data['nama_gambar'] = this.namaGambar;
    return data;
  }
}


//  List<BookList> bookLists = [
//    BookList(
//      imageUrl: 'assets/images/trending_book_1.png',
//     //  writers: 'Guy Kawasaki',
//      title: 'Enchantment',
//    ),
   
//  ];

