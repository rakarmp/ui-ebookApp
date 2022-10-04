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
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     InkWell(
    //       onTap: () {
    //         Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
    //           'imageUrl': info.imageUrl,
    //           // 'writers': info.namaPenulis,
    //           'title': info.title,
    //         });
    //       },
    //       child: Hero(
    //         tag: 'info.imageUrl',
    //         child: Container(
    //           height: 140,
    //           width: 90,
    //           margin: EdgeInsets.only(top: 12, right: 20),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10),
    //             image: DecorationImage(
    //               image: NetworkImage('${info.imageUrl}'),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     SizedBox(height: 8),
    //     // Text(
    //     //   info.namaPenulis.toString(),
    //     //   style: mediumText12.copyWith(color: greyColor),
    //     // ),
    //     Text(
    //       info.title.toString(),
    //       style: semiBoldText14.copyWith(color: blackColor),
    //     ),
    //   ],
    // );
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
              'imageUrl': info.imageUrl,
              // 'writers': info.namaPenulis,
              'title': info.title,
            });
      }, 
    child: Container(
      margin: EdgeInsets.only(bottom: 19),
      height: 81,
      width: MediaQuery.of(context).size.width - 50,
      child: Row(
        children: <Widget>[
          Container(
            height: 100,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage('${info.imageUrl}'))
            ),
          ),
          SizedBox(width: 21,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
                Text(
             info.title.toString(),
             style: semiBoldText14.copyWith(color: blackColor),
             maxLines: 3,
             overflow: TextOverflow.fade,
           ),
          SizedBox(height: 5,),
          Text('Jejen Wesler',
          style: mediumText12.copyWith(color: greyColor),
          ),
            // Text(
            //   info.namaPenulis.toString(),
            //   style: mediumText12.copyWith(color: greyColor),
            // ),
             ],
          ),
        ],
      ),
    ),
    );
  }
}
