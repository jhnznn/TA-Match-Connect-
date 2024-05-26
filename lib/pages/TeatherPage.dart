import 'package:flutter/material.dart';
import 'package:match_connect/data/teather.dart';

class TeatherPage extends StatelessWidget {
  TeatherPage({Key? key}) : super(key: key);

  final List<Teather> teather = [
    Teather(name: "My Friend is\nAbove the Moon",Posterpath: "assets/tposter1.png"),
    Teather(name: "Transformer\nfrom a Far", Posterpath: "assets/tposter2.png"),
    Teather(name: "The Last Moon", Posterpath: "assets/tposter3.png"),
    Teather(name: "My Friend is\nAbove the Moon",Posterpath: "assets/tposter1.png"),
    Teather(name: "Transformer\nfrom a Far", Posterpath: "assets/tposter2.png"),
    Teather(name: "The Last Moon", Posterpath: "assets/tposter3.png"),
    Teather(name: "My Friend is\nAbove the Moon",Posterpath: "assets/tposter1.png"),
    Teather(name: "Transformer\nfrom a Far", Posterpath: "assets/tposter2.png"),
    Teather(name: "The Last Moon", Posterpath: "assets/tposter3.png"),
    Teather(name: "My Friend is\nAbove the Moon",Posterpath: "assets/tposter1.png"),
    Teather(name: "Transformer\nfrom a Far", Posterpath: "assets/tposter2.png"),
    Teather(name: "The Last Moon", Posterpath: "assets/tposter3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teather",
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
            (teather.length / 3).ceil(), // Membagi item menjadi grup 3 per baris
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 35), // Memberikan jarak antar baris
              Row(
                children: [
                  for (var i = index * 3;
                      i < (index + 1) * 3 && i < teather.length;
                      i++)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                teather[i].Posterpath,
                                width: 100,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              teather[i].name,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
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
