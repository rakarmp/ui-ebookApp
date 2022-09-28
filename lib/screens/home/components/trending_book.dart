import 'package:elibmobile/models/book.dart';
import 'package:elibmobile/screens/home/pages/book_details.dart';
import 'package:flutter/material.dart';
import 'package:elibmobile/themes.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    Key? key,
    required this.info,
  }) : super(key: key);

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         InkWell(
           onTap: () {
             Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
               'imageUrl': info.namaGambar,
               'writers': info.namaPenulis,
               'title': info.namaBerkas,
             });
           },
           child: Hero(
             tag: '${info.namaGambar}',
             child: Container(
               height: 140,
               width: 90,
               margin: EdgeInsets.only(top: 12, right: 20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                   image: NetworkImage('info.namaGambar'),
                 ),
               ),
             ),
           ),
         ),
         SizedBox(height: 8),
          Text(
            info.namaPenulis.toString(),
            style: mediumText12.copyWith(color: greyColor),
          ),
         Text(
           info.namaBerkas.toString(),
           style: semiBoldText14.copyWith(color: blackColor),
         ),
       ],
    );
  }
}
