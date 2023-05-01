import 'package:flutter/material.dart';
import 'package:movie_application/widgets/CustomNavBar.dart';
import 'package:movie_application/widgets/MoviePageButtons.dart';
import 'package:movie_application/widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Opacity(
              opacity: 0.4,
              child: Image.asset("images/image8.jpg",height: 280,width: double.infinity,fit: BoxFit.cover,),
            ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                        ),
                        InkWell(
                          onTap: (){
                            print("Added to favourites");
                          },
                          child: Icon(Icons.favorite_border,color: Colors.white,size: 35,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                            color: Colors.red.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/image8.jpg",height: 250,width: 180,),
                        ),
                      ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Icon(Icons.play_arrow,color: Colors.white,size: 60,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  MoviePageButtons(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                      "Interstellar",
                      style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),
                     ),
                    SizedBox(height: 15,),
                    Text(
                      "In a dystopian future where humanity is lacking survival options, a retired astronaut named Cooper "
                          "leads a mysterious mission that will take them through a wormhole near Saturn. "
                          "As they search for a new planet to inhabit, Cooper and his crew must also live with the consequences "
                          "of leaving home. The time-bending sci-fi adventure was directed by Christopher Nolan and stars "
                          "Matthew McConaughey, Anne Hathaway and Jessica Chastain.",
                      style: TextStyle(color: Colors.white,fontSize: 16,),
                      textAlign: TextAlign.justify,
                    ),
                    ],
                   ),
                  ),
                  SizedBox(height: 10,),
                  RecommendWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar() ,

    );
  }
}




