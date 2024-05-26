import 'package:flutter/material.dart';
import 'package:match_connect/pages/DetailActorPage.dart';
import 'package:match_connect/pages/DetailMoviePage.dart';
import 'package:match_connect/pages/Moviepage.dart';
import 'package:match_connect/pages/TeatherPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    initialRoute:'/',
    routes:{
      // '/':(context) => MoviePage(),
      //'/teather':(context) => TeatherPage(),
      //'/':(context) => DetailActor(),
      '/':(context) => DetailMovie(),
    },
  ));
}
