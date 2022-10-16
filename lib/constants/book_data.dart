import 'package:dashboard_task/pages/search_page.dart';

class BookModel {
  String? book_title;
  String? book_poster_url;
  int? book_release_year;
  double? rating;

  BookModel(this.book_title, this.book_poster_url, this.book_release_year,
      this.rating);

  static List<BookModel> getBookData() {
    return [
      BookModel('The Melian', 'assets/images/movie1', 1999, 9.6),
      BookModel('The Poppy War', 'assets/images/movie2', 2000, 9.4),
      BookModel('Harry Potter', 'assets/images/movie3', 2004, 9.3),
      BookModel('Coven', 'assets/images/movie4', 1987, 9.7),
      BookModel('SpiderWise', 'assets/images/movie5', 2005, 9.8),
      BookModel('Pans Laby', 'assets/images/movie6', 1999, 9.9),
      BookModel('The Golden Pathway', 'assets/images/movie7', 2003, 9.1),
      BookModel('Avatar', 'assets/images/movie8', 2010, 8.9),
    ];

    void UpdateList(String value) {}
    ;
  }
}
