import 'package:elibmobile/configs/api_book.dart';
import 'package:elibmobile/configs/api_services.dart';
import 'package:elibmobile/models/book.dart';
import 'package:elibmobile/models/categories.dart';
import 'package:elibmobile/screens/home/components/recent_book.dart';
import 'package:elibmobile/screens/home/components/trending_book.dart';
import 'package:elibmobile/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = '/homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dataUser = GetStorage().read('user');
  ApiService apiService = ApiService();
  ApiBook apiBook = ApiBook();
  late List<Categories>? categories = [];
  late List<BookList>? book = [];
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
    book = (await apiBook.fetchBook())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.lightBlue,
        backgroundColor: Colors.white,
        strokeWidth: 3.0,
        onRefresh: () async {
          return Future.delayed(Duration(seconds: 1), (() {
            setState(() {
              _getData();
            });
          }));
        },
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, ' + dataUser['name'],
                              style: semiBoldText16,
                            ),
                            Text(
                              'Elibrary',
                              style: regularText14.copyWith(color: greyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Cari Buku Favorite Kamu...',
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
                  ),
                  
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Buku Terbaru',
                      style: semiBoldText16.copyWith(color: blackColor),
                    ),
                  ),
                  SizedBox(height: 12),
                  SingleChildScrollView(
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
                  ),
                ],
              ),
            ),
             Container(
               width: MediaQuery.of(context).size.width * 1,
               height: MediaQuery.of(context).size.height * 0.1,
               padding: EdgeInsets.symmetric(horizontal: 30),
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
                               margin: EdgeInsets.only(top: 30, right: 8),
                               padding: EdgeInsets.symmetric(
                                   horizontal: 8, vertical: 8),
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
                             ),
                           ),
                         );
                       }),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Text(
                'Buku Trending',
                style: semiBoldText16.copyWith(color: blackColor),
              ),
            ),
            
            //  Container(
            //    width: MediaQuery.of(context).size.width * 1,
            //    height: MediaQuery.of(context).size.height * 1,
            //    child: book == null || book!.isEmpty
            //        ? const Center(
            //            child: CircularProgressIndicator(),
            //          )
            //        : ListView.builder(
            //          scrollDirection: Axis.horizontal,
            //          itemCount: book!.length,
            //          itemBuilder: (context, index) {
            //            return TrendingBook(info: book![index]);
            //          }
            //        ),
            //  ),
            ListView.builder(
              padding: EdgeInsets.only(top: 25, right: 25, left: 25),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: book!.length,
              itemBuilder: (context, index) {
                return TrendingBook(info: book![index]);
              }
              )
          ],
        ),
      ),
    );
  }
}
