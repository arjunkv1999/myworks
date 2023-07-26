import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/movieprovider.dart';

class Whishlist extends StatelessWidget {
  const Whishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var whishlist = context.watch<MovieProvider>().whishMovie;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Whish List (${whishlist.length})"),
      ),
      body: ListView.builder(
          itemCount: whishlist.length,
          itemBuilder: (context, index) {
            final movie = whishlist[index];
            return Card(
              key: ValueKey(movie.title),
              child: ListTile(
                title: Text(movie.title),
                trailing: TextButton(
                    onPressed: () {
                      context.read<MovieProvider>().removeFromList(movie);
                    },
                    child: const Text(
                      "Remove",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            );
          }),
    );
  }
}