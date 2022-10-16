import 'package:dashboard_task/constants/assets.dart';
import 'package:flutter/material.dart';

import '../constants/movie_book.dart';
import '../constants/palette.dart';

class BookList extends StatelessWidget {
  BookList({
    Key? key,
  }) : super(key: key);
  List<String> tempArray = [];
  @override
  Widget build(BuildContext context) {
    final movieBooks = MovieBook.getPopularMovieBooks();

    return Container(
      color: Palette.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            color: Palette.white,
            height: 63,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieBooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(6),
                  child: InkWell(
                    onTap: (() {
                      setState() {
                        movieBooks[index].isSelected =
                            !movieBooks[index].isSelected;
                      }
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                          color: movieBooks[index].isSelected == true
                              ? Colors.purple
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[500]!,
                              spreadRadius: 2.0,
                              blurRadius: 10.0,
                            ),
                          ]),
                      margin: EdgeInsets.only(right: 6),
                      // color: Colors.green,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  movieBooks[index].image1,
                                  height: 26,
                                  width: 26,
                                ),
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.8),
                                      child: Text(
                                        movieBooks[index].name2,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Palette.grey,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
