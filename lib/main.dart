import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF54D3C2);

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotels Booking",
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            SearchSection(),
            HotelSection()
          ]
        ),
      )
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.grey),
        onPressed: null
      ),
      title: Text("Explore", style: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w800
      )),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_outline_rounded),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.place),
          onPressed: null,
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}


class SearchSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 1)
                    )
                  ]
                ),

                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "London",
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none
                  ),
                ),
              )),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 4)
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25)
                  )
                ),
                child: ElevatedButton(
                  onPressed: null, 
                  child: Icon(Icons.search),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    
                  )
                )
              )
            ],
          ),
          SizedBox(height: 50,),
          Container(
            color: Colors.blue,
            height: 100
          )
        ],
      )
    );
  }
}


class HotelSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200
    );
  }
}