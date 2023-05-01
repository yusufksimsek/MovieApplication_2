import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_application/pages/CategoryPage.dart';
import 'package:movie_application/pages/HomePage.dart';
import 'package:movie_application/pages/MoviePage.dart';

    void main(){
  runApp(MyApp());
    }

    class MyApp extends StatefulWidget{
  @override
      State<MyApp> createState() => _MyAppState();
    }

    class _MyAppState extends State<MyApp>{
      @override
      void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
      Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0111D),
      ),
      routes: {
        "/" : (context) => HomePage(),
        "categoryPage" : (context) => CategoryPage(),
        "moviePage" : (context) => MoviePage(),
      },
    );
      }
   }