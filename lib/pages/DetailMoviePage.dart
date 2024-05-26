import 'package:flutter/material.dart';
import 'package:match_connect/data/CastCard.dart';
import 'package:match_connect/data/similar.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/poster1.png",
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 7),
          Text(
            "Winner Winner Chicken Dinner",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF01004E),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fanta Production",
                style: TextStyle(
                  color: Color(0xFF01004E),
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFF3F3F3),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Action',
                      style: TextStyle(
                        color: Color(0xFFC6C4C4),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 60,
                    height: 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFF3F3F3),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Thriller',
                      style: TextStyle(
                        color: Color(0xFFC6C4C4),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Winner Winner Chicken Dinner is a short film directed by Peter J. Babington. The\nstory centers on a guilt-stricken man navigating a post-apocalyptic Kentucky\ncountryside. Set against a backdrop of scarcity and survival, the...',
                      style: TextStyle(
                        color: Color(0xFFA4A4A4),
                        fontSize: 12,
                      ),
                    ),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          ' Read More',
                          style: TextStyle(
                            color: Color(0xFF01004E),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/email.png",
                  width: 40,
                  height: 40,
                ),
              ),
              SizedBox(width: 6),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/telpon.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Director",
                    style: TextStyle(
                      color: Color(0xFF01004E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/Direct2.png",
                        width: 100,
                        height: 50,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Matt Bettinelli-Olpin",
                      style: TextStyle(
                        color: Color(0xFF01004E),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/Direct1.png",
                        width: 100,
                        height: 50,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Tyler Gillett",
                      style: TextStyle(
                        color: Color(0xFF01004E),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Cast",
                    style: TextStyle(
                      color: Color(0xFF01004E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 16), // Padding awal
                CastCard(
                  imagePath: "assets/Cast2.png",
                  name: "Detail",
                ),
                SizedBox(width: 16), // Jarak antara cast cards
                CastCard(
                  imagePath: "assets/Cast2.png",
                  name: "Detail",
                ),
                SizedBox(width: 16), // Jarak antara cast cards
                CastCard(
                  imagePath: "assets/Cast2.png",
                  name: "Detail",
                ),
                SizedBox(width: 16), // Jarak antara cast cards
                CastCard(
                  imagePath: "assets/Cast1.png",
                  name: "Detail",
                ),
                SizedBox(width: 16), // Jarak antara cast cards
                CastCard(
                  imagePath: "assets/Cast1.png",
                  name: "Detail",
                ),
                SizedBox(width: 16), // Jarak antara cast cards
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Similar",
                    style: TextStyle(
                      color: Color(0xFF01004E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20), // Padding awal
                Similar(
                  PosterPath: "assets/poster4.png",
                  name: "Hero Galaxy",
                ),
                SizedBox(width: 40), // Jarak antara cast cards
                Similar(
                  PosterPath: "assets/poster5.png",
                  name: "Let’s Cooked",
                ),
                SizedBox(width: 40), // Jarak antara cast cards
                Similar(
                  PosterPath: "assets/poster6.png",
                  name: "Mr. Llama",
                ),
                SizedBox(width: 40),
                Similar(
                  PosterPath: "assets/poster4.png",
                  name: "Hero Galaxy",
                ),
                SizedBox(width: 40), // Jarak antara cast cards
                Similar(
                  PosterPath: "assets/poster5.png",
                  name: "Let’s Cooked",
                ),
                SizedBox(width: 40), // Jarak antara cast cards
                Similar(
                  PosterPath: "assets/poster6.png",
                  name: "Mr. Llama",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
