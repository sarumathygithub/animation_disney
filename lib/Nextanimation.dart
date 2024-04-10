import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Nextanimation extends StatefulWidget {
  const Nextanimation({super.key});

  @override
  State<Nextanimation> createState() => _NextanimationState();
}

class _NextanimationState extends State<Nextanimation> {
  String bhm ="name";
  List products=[
    {
      "image":"https://images.indianexpress.com/2024/01/goat-01012024.jpg?w=414"
    },
    {
      "image":"https://images.indianexpress.com/2024/01/goat-01012024.jpg?w=414"
    },
    {
      "image":"https://images.indianexpress.com/2024/01/goat-01012024.jpg?w=414"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor:Color(0xff01147C) ,
        leading: Row(

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Icon(Icons.menu,color: Colors.white,),
            ),
            SizedBox(
              width: 59,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Image.asset("assets/images/Disneybg5.png",width: 38),
            ),

            
          ],
        ),
        actions: [
          Icon(Icons.search,color: Colors.white,)
        ],


      ),
      body:Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 346,


                     child:  Image.asset("assets/images/movimg2.jpg",),
                  ),

                   );

                }),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Continue Watching",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
              Icon(Icons.arrow_forward_ios_rounded,color: Colors.black45,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: 180,
                    child: Image.asset("assets/images/Agilan.png",),
                  ),
                );
                }),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(" WatchList",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
              Icon(Icons.arrow_forward_ios_rounded,color: Colors.black45,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      width: 180,
                      child: Column(
                        children: [
                          Image.asset("assets/images/got.jpg")

                        ],
                      ),

                    ),
                  );
                }),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(" WatchList",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
              Icon(Icons.arrow_forward_ios_rounded,color: Colors.black45,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.30,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      width: 180,
                      child: Column(
                        children: [
                          Image.asset("assets/images/got.jpg")

                        ],
                      ),

                    ),
                  );
                }),
          ),
        ],
      ),






      backgroundColor: Color(0xff01147C),



      bottomNavigationBar: GNav(
        activeColor: Colors.white,
        backgroundColor: Color(0xff01147C),
        color: Colors.white,
        tabs: [

          GButton(icon: Icons.home, text: "home"),
          GButton(icon: Icons.search,text: "Search"),
          GButton(icon: Icons.account_circle_sharp,text: "My space"),





        ],
      ),

    );
  }
}
