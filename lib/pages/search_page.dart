// import 'dart:html';

import 'package:dashboard_task/constants/assets.dart';
import 'package:dashboard_task/constants/book_data.dart';
import 'package:dashboard_task/constants/movie_book.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'bookmark_page.dart';
import '../constants/app_constant.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final movieBooks = MovieBook.getPopularMovieBooks();

    return SingleChildScrollView(
      child: Container(
        height: 900,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: 'Search for Titles, Topics or Authors',
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.grey[200]),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: bookModel.length,
            //   itemBuilder: (context, index) => ListTile(
            //     title: Text(
            //       bookModel[index].book_title!,
            //       style:
            //           TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            //     ),
            //     subtitle: Text('${bookModel[index].book_release_year!}'),
            //     trailing: Text(
            //       '${bookModel[index].rating!},',
            //     ),
            //     leading: Image.asset('${bookModel[index].book_poster_url!}'),
            //   ),
            // ))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Recent',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text('Clear'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 177,
              width: 400,
              color: Colors.white,
              child: Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: [
                              TextSpan(text: 'TM Academy'),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 9, left: 6),
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              )
                            ])),
                      ),
                      height: 29,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Container(
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: [
                              TextSpan(text: 'J.K. Rowling'),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 9, left: 6),
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              )
                            ])),
                      ),
                      height: 29,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: [
                              TextSpan(text: 'Mystique'),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 9, left: 6),
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              )
                            ])),
                      ),
                      height: 29,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: [
                              TextSpan(text: 'Marmut Merah jambu'),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 9, left: 6),
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              )
                            ])),
                      ),
                      height: 29,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: [
                              TextSpan(text: 'The Lord of the Rings'),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 9, left: 6),
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              )
                            ])),
                      ),
                      height: 29,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: [
                              TextSpan(text: 'The Smurf'),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 9, left: 6),
                                  child: Icon(
                                    Icons.close_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              )
                            ])),
                      ),
                      height: 29,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Top Book Search',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 48.0,
                          height: 53.0,
                          decoration: new BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(7),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Assets.movie1)))),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Text(
                            '    Critical Elevan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Ika Natasha',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 48.0,
                              height: 53.0,
                              decoration: new BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(7),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(Assets.movie2)))),
                          // SizedBox(
                          //   width: 2,
                          // ),
                          Column(
                            children: [
                              Text(
                                '    Percy Jackson',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Rick Riodran',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 48.0,
                          height: 53.0,
                          decoration: new BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(7),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Assets.movie3)))),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Mercies',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            ' Kiran Millwood',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 48.0,
                              height: 53.0,
                              decoration: new BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(7),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(Assets.movie4)))),
                          SizedBox(
                            width: 4,
                          ),
                          Column(
                            children: [
                              Text(
                                '    Serendity Pity',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Erisca Febriani',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 48.0,
                          height: 53.0,
                          decoration: new BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(7),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Assets.movie5)))),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Text(
                            '    Pergi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '       Pere Liye',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 68,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 48.0,
                              height: 53.0,
                              decoration: new BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(7),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(Assets.movie6)))),
                          Column(
                            children: [
                              Text(
                                '    Twice shy',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Sarah Hogle',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 48.0,
                          height: 53.0,
                          decoration: new BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(7),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Assets.movie7)))),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Text(
                            '    Harry Potter',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'J K Rowling',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 48.0,
                              height: 53.0,
                              decoration: new BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(7),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(Assets.movie1)))),
                          SizedBox(
                            width: 4,
                          ),
                          Column(
                            children: [
                              Text(
                                'Twilight',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                ' Stephene Mayer',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Top Authors Search',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Container(
                      color: Colors.white,
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movieBooks.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: Colors.white,
                            margin: EdgeInsets.only(right: 5, left: 5),
                            width: 100,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 102,
                                    color: Colors.white,
                                    child: ClipOval(
                                      child: Image.asset(
                                          movieBooks[index].authimg,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 4),
                                      Text(
                                        movieBooks[index].authname,
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
