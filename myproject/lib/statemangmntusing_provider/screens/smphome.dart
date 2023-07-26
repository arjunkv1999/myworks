import 'package:flutter/material.dart';
import 'package:myproject/statemangmntusing_provider/screens/smpwishlist.dart';
import 'package:provider/provider.dart';

import '../provider/movieprovider.dart';
//import 'package:sample_flutter/Statemanagment%20using%20Provider/Model/Movie.dart';
//import 'package:sample_flutter/Statemanagment%20using%20Provider/Provider/MovieProvider.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    home: ProvHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProvHome extends StatelessWidget {
  //const ProvHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movie;
    var movieList = context.watch<MovieProvider>().whishMovie;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statemanegment using Provider"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Whishlist()));
                  },
                  icon: const Icon(Icons.favorite),
                  label: const Text("Go to my Whishlist")),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(itemBuilder: (context, index) {
                    var movie = movies[index];
                    return Card(
                      key: ValueKey(movie.title),
                      child: ListTile(
                        title: Text(movie.title),
                        subtitle: Text(movie.time ?? "No Time"),
                        trailing: IconButton(
                            icon: const Icon(Icons.favorite),
                            onPressed: (){
                              if(!movieList.contains(movie)) {
                                context.read<MovieProvider>().addToList(movie);
                              } else {
                                context.read<MovieProvider>().removeFromList(movie);
                              }
                            },

                            color: movieList.contains(movie)
                                ? Colors.red
                                : Colors.white),
                      ),
                    );
                  }),
                ),
              ))
            ],
          )),
    );
  }
}