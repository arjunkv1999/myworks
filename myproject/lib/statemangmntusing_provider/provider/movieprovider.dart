import 'dart:math';
import 'package:flutter/cupertino.dart';

import '../model/movies.dart';


final List<Movie> data = List.generate(
    100,
    (index) =>
        Movie(title: "Movie $index", time: "${Random().nextInt(100) + 60}"));

class MovieProvider with ChangeNotifier {
  // All movie( that will be displayed on the Home Screen)
  final List<Movie> _movieHome = data;
  //  To retrive all the Movies
  List<Movie> get movie => _movieHome;
  // To get the initail Whishlist ( Which contain nothing until we add some )
  final List<Movie> whishList = [];
  // To get the Data(file/movie) or Data count
  List<Movie> get whishMovie => whishList;
  // To add movie to the Movie Whish List
  void addToList(Movie movie) {
    whishList.add(movie);
    notifyListeners();
  }
  // To Remove movie from the Movie Whish List
  void removeFromList(Movie movie) {
    whishList.remove(movie);
    notifyListeners();
  }
}