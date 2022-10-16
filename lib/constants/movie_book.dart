import 'package:dashboard_task/widgets/book_list.dart';

class MovieBook {
  MovieBook({
    required this.authimg,
    required this.authname,
    required this.image,
    required this.name,
    required this.name1,
    required this.name2,
    required this.image1,
    required this.isSelected,
  });

  final String image;
  final String image1;
  final String name;
  final String name1;
  final String name2;
  final String authimg;
  final String authname;

  late final isSelected;

  static List<MovieBook> getPopularMovieBooks() {
    return [
      MovieBook(
        image: 'assets/images/movie1.jpeg',
        name: 'Ther Melian Discord',
        name1: 'Shienny M.S',
        name2: 'Fantasy',
        image1: 'assets/images/hat.png',
        isSelected: true,
        authname: 'Raditiya Dika',
        authimg: 'assets/images/face1.jpg',
      ),
      MovieBook(
        image: 'assets/images/movie2.jpeg',
        name: 'The poppy war',
        name1: 'Poppy',
        name2: 'Romance',
        image1: 'assets/images/romance.png',
        isSelected: false,
        authname: 'N Tsana',
        authimg: 'assets/images/face6.jpg',
      ),
      MovieBook(
        image: 'assets/images/movie3.jpeg',
        name: 'Harry Potter',
        name1: 'Potter',
        name2: 'Mystry',
        image1: 'assets/images/mystry.png',
        isSelected: false,
        authname: 'Tere Liye',
        authimg: 'assets/images/face2.jpg',
      ),
      MovieBook(
        image: 'assets/images/movie4.jpeg',
        name: 'Coven',
        name1: 'Omen',
        name2: 'Crime',
        image1: 'assets/images/crime.png',
        isSelected: false,
        authname: 'Dewi Lestari',
        authimg: 'assets/images/face3.jpg',
      ),
      MovieBook(
        image: 'assets/images/movie5.jpeg',
        name: 'Spiderwicw',
        name1: 'Spyder',
        name2: 'Thriller',
        image1: 'assets/images/thriller.png',
        isSelected: false,
        authname: 'Asma n',
        authimg: 'assets/images/face4.jpg',
      ),
      MovieBook(
        image: 'assets/images/movie6.jpeg',
        name: 'Pans Laby',
        name1: 'Lobs',
        name2: 'Comedy',
        image1: 'assets/images/comedy.png',
        isSelected: false,
        authname: 'Ram',
        authimg: 'assets/images/face5.jpg',
      ),
      MovieBook(
        image: 'assets/images/movie7.jpeg',
        name: 'The Golden pathways',
        name1: 'Goldpath',
        name2: 'Drama',
        image1: 'assets/images/drama.png',
        isSelected: false,
        authname: 'Vijay',
        authimg: 'assets/images/face6.jpg',
      ),
      MovieBook(
        image: 'assets/images/movie8.jpeg',
        name: 'Avatar',
        name1: 'James Cameron',
        name2: 'Series',
        image1: 'assets/images/series.png',
        isSelected: false,
        authname: 'Harry',
        authimg: 'assets/images/face2.jpg',
      ),
    ];
  }
}
