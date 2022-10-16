import 'package:dashboard_task/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_task/constants/app_constant.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          Assets.movie1op,
                        ),
                        fit: BoxFit.fill)),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.arrow_back_ios_outlined),
                        SizedBox(
                          width: 96,
                        ),
                        Text(
                          AppConstant.ther,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Book',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                            children: [
                          TextSpan(
                            text: ' 3',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' of 4',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          )
                        ])),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image(
                          image: AssetImage(Assets.movie1),
                          fit: BoxFit.cover,
                          height: 240,
                          width: 180,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Author: Shienny M.S',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'November 14, 2015',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: RichText(
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  children: [
                                WidgetSpan(
                                    child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.8),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 19,
                                  ),
                                )),
                                TextSpan(
                                    text: '4.5',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                    text: '/5.0',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ])),
                        ),
                        // SizedBox(
                        //   width: 35,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: RichText(
                            text: TextSpan(
                                text: '4,2k',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'Read',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: RichText(
                              text: TextSpan(
                                  text: '360',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                TextSpan(
                                    text: 'Pages',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ])),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      color: Colors.grey[100],
                      height: 406,
                      width: 320,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Synopsis',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: Text(AppConstant.para),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Icon(
                              Icons.bookmark,
                              color: Colors.red[300],
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 39),
                                child: ElevatedButton(
                                  onPressed: () {
                                    print('pressed');
                                  },
                                  child: Text('Continue Reading'),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.indigo,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      fixedSize: const Size(250, 50)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
