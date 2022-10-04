class BookList {
  int? id;
  String? title;
  String? imageUrl;
  List<Artists>? artists;
  String? releaseDate;

  BookList(
      {this.id, this.title, this.imageUrl, this.artists, this.releaseDate});

  BookList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imageUrl = json['image_url'];
    if (json['artists'] != null) {
      artists = <Artists>[];
      json['artists'].forEach((v) {
        artists!.add(new Artists.fromJson(v));
      });
    }
    releaseDate = json['release_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image_url'] = this.imageUrl;
    if (this.artists != null) {
      data['artists'] = this.artists!.map((v) => v.toJson()).toList();
    }
    data['release_date'] = this.releaseDate;
    return data;
  }
}

class Artists {
  Author? author;

  Artists({this.author});

  Artists.fromJson(Map<String, dynamic> json) {
    author =
        json['author'] != null ? new Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.author != null) {
      data['author'] = this.author!.toJson();
    }
    return data;
  }
}

class Author {
  int? id;
  String? name;

  Author({this.id, this.name});

  Author.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
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

