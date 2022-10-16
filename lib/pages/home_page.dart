import 'package:dashboard_task/pages/bookmark_page.dart';
import 'package:dashboard_task/widgets/book_list_1.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_task/constants/app_constant.dart';
import 'package:dashboard_task/constants/movie_book.dart';

import '../bottom_navigation_page.dart';
import '../constants/assets.dart';
import '../constants/palette.dart';
import '../widgets/book_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Palette.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Palette.white,
              height: 422,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Palette.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: SafeArea(
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              AppConstant.greeting1,
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              AppConstant.greeting2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 160,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(16),
                      height: 240,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[500]!,
                            spreadRadius: 2.0,
                            blurRadius: 10.0,
                            offset: const Offset(0, 8),
                          ),
                        ],
                        color: Palette.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNavigationPage(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(16),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppConstant.msg,
                                      style: TextStyle(
                                        color: Palette.darkGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        AppConstant.continueReading,
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Palette.darkOrange,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      Assets.movie1,
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ther Melian: Discord',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Text(
                                          'Book 3 of 4',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BookList(),
            BookList1()
          ],
        ),
      ),
    );
  }
}
