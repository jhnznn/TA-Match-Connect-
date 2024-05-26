import 'package:flutter/material.dart';
import 'package:match_connect/data/porto.dart';

class DetailActor extends StatelessWidget {
  DetailActor({Key? key}) : super(key: key);
  final List<Porto> movies = [
    Porto(name: "Pathaan", Posterpath: "assets/porto1.png"),
    Porto(name: "Dunki", Posterpath: "assets/porto2.png"),
    Porto(name: "Dilwale", Posterpath: "assets/porto3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/Profil.png",
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Shah Rukh Khan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF01004E),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                color: Color(0xFF01004E),
                size: 20,
              ),
              Text(
                "Mumbai, Maharashtra ",
                style: TextStyle(
                  color: Color(0xFF01004E),
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/email.png",
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(width: 6),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/telpon.png",
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                      color: Color(0xFF01004E),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Hi! My name is Shah Rukh Khan, I am an actor from India,I am 30 years old,\nmy height is 183cm and my weight is 65Kg ",
                    style: TextStyle(
                      color: Color(0xFFA4A4A4),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Portofolio",
                style: TextStyle(
                  color: Color(0xFF01004E),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image(
                          image: NetworkImage(movies[0].Posterpath),
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        movies[0].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF01004E),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image(
                          image: NetworkImage(movies[1].Posterpath),
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        movies[1].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF01004E),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image(
                          image: NetworkImage(movies[2].Posterpath),
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        movies[2].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF01004E),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
