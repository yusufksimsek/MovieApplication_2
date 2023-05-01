import 'package:flutter/material.dart';
import 'package:movie_application/widgets/CustomNavBar.dart';

class CategoryPage extends StatelessWidget {
   CategoryPage({Key? key}) : super(key: key);

  final List<String> categories = [
    "Action",
    "Sci-Fi",
    "Comedy",
    "Horror",
    "Crime",
    "Adventure"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                  ),
                  SizedBox(height: 30,),
                  Text("Discover",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 30),),
                ],
              ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                children: [
                  for (int index = 0; index < categories.length; index++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/image${index+11}.jpg",height: 70,width: 90,fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 10,),
                      Text(categories[index],style: TextStyle(fontSize: 22,color: Colors.white),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,),
                    ],
                  ),
                  ),
                ],
              ),
              ),
           ],
         ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(
          
      ),
    );
  }
}


