import 'package:flutter/material.dart';
import 'package:match_connect/data/movie.dart';

class MoviePage extends StatelessWidget {
  MoviePage({Key? key}) : super(key: key);

  final List<Movie> movies = [
    Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/poster1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/poster2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/poster3.png"),
    Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/poster1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/poster2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/poster3.png"),
    Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/poster1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/poster2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/poster3.png"),
    Movie(
        name: "Winner Winner\nChicken Dinner",
        Posterpath: "assets/poster1.png"),
    Movie(name: "Alien Invasion", Posterpath: "assets/poster2.png"),
    Movie(name: "Eternal Ghost", Posterpath: "assets/poster3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF01004E),
          ),
        ),
        centerTitle: true,
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical, 
        itemCount:
            (movies.length / 3).ceil(), // Membagi item menjadi grup 3 per baris
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 35), // Memberikan jarak antar baris
              Row(
                children: [
                  for (var i = index * 3;
                      i < (index + 1) * 3 && i < movies.length;
                      i++)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                movies[i].Posterpath,
                                width: 100,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
