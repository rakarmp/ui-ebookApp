import 'package:elibmobile/configs/api_services.dart';
import 'package:elibmobile/models/book.dart';
import 'package:elibmobile/models/categories.dart';
import 'package:elibmobile/screens/home/components/recent_book.dart';
import 'package:elibmobile/screens/home/components/trending_book.dart';
import 'package:elibmobile/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = '/homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService apiService = ApiService();
  late List<Categories>? categories = [];
  List<String> _categories = [
    'All Books',
    'Comic',
    'Novel',
    'Manga',
    'Fairy Tales',
  ];

  int _isSelected = 0;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    categories = (await apiService.fetchCategories())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ElibMobile App',
                  style: semiBoldText16,
                ),
                Text(
                  'Elibrary',
                  style: regularText14.copyWith(color: greyColor),
                ),
              ],
            ),
            // Spacer(),
            // Image.asset(
            //   'assets/icons/icon-menu.png',
            //   width: 18,
            // ),
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Cari Buku Favorite Kamu',
            hintStyle: mediumText12.copyWith(color: greyColor),
            fillColor: greyColorSearchField,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            isCollapsed: true,
            contentPadding: EdgeInsets.all(18),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Icon(
                  Icons.search_rounded,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            RecentBook(
              image: 'assets/images/recentbook_1.png',
              title: 'The Magic',
            ),
            SizedBox(width: 20),
            RecentBook(
              image: 'assets/images/recentbook_2.png',
              title: 'The Martian',
            ),
          ],
        ),
      );
    }

    // Widget categories(index) {
    //   return InkWell(
    //     onTap: () {
    //       setState(() {
    //         _isSelected = index;
    //       });
    //     },
    //     child: Expanded(
    //         child: Container(
    //       margin: EdgeInsets.only(top: 30, right: 12),
    //       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    //       decoration: BoxDecoration(
    //         color: _isSelected == index ? blueColor : transParentColor,
    //         borderRadius: BorderRadius.circular(6),
    //       ),
    //       child: Text(
    //         index,
    //         style: semiBoldText14.copyWith(
    //             color: _isSelected == index ? whiteColor : greyColor),
    //       ),
    //     )),
    //   );
    // }

    // Widget listCategories() {
    //   return SingleChildScrollView(
    //     padding: EdgeInsets.only(left: 30),
    //     scrollDirection: Axis.horizontal,
    //     child: Row(
    //       children: _categories
    //           .asMap()
    //           .entries
    //           .map((MapEntry map) => categories(map.key))
    //           .toList(),
    //     ),
    //   );
    //   // return categories == null || categories!.isEmpty
    //   //     ? const Center(
    //   //         child: CircularProgressIndicator(),
    //   //       )
    //   //     : ListView.builder(
    //   //         itemCount: categories!.length,
    //   //         itemBuilder: (context, index) {
    //   //           return Card(
    //   //             child: Column(
    //   //               children: [
    //   //                 Row(
    //   //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   //                   children: [
    //   //                     Text(categories![index].id.toString()),
    //   //                     Text(categories![index].username),
    //   //                   ],
    //   //                 ),
    //   //                 const SizedBox(
    //   //                   height: 20.0,
    //   //                 ),
    //   //                 Row(
    //   //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   //                   children: [
    //   //                     Text(categories![index].email),
    //   //                     Text(categories![index].website),
    //   //                   ],
    //   //                 ),
    //   //               ],
    //   //             ),
    //   //           );
    //   //         },
    //   //       );
    // }

    Widget trendingBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: bookLists
              .asMap()
              .entries
              .map(
                (MapEntry map) => TrendingBook(
                  info: bookLists[index],
                ),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(height: 30),
                searchField(),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Recent Book',
                    style: semiBoldText16.copyWith(color: blackColor),
                  ),
                ),
                SizedBox(height: 12),
                recentBook(),
              ],
            ),
          ),
          // listCategories(),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.1,
            child: categories == null || categories!.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _isSelected = index;
                          });
                        },
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 30, right: 12),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                            color: _isSelected == index
                                ? blueColor
                                : transParentColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            categories![index].namaKategori.toString(),
                            style: semiBoldText14.copyWith(
                                color: _isSelected == index
                                    ? whiteColor
                                    : greyColor),
                          ),
                        )),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Trending Now',
              style: semiBoldText16.copyWith(color: blackColor),
            ),
          ),
          trendingBook(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
