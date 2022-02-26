import 'package:flutter/material.dart';
import 'package:joice_app/detail_screen.dart';
import 'package:joice_app/drink_screen.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffED828A),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                height: 250,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            width: 330,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(17),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Search joice name",
                                suffixIcon: Icon(Icons.search,
                                    size: 30, color: Colors.pink),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffFFD2D7),
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(Icons.more_vert,
                                size: 40, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.fill,
                                  image: AssetImage("images/avocado.jpg"),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Avocado",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/mango.jpg")),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Mango",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/apple.jpg")),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Apple",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/banana.jpg")),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Banana",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/grape.jpg")),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Grapes",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          Color(0xffF78C94),
                          "images/pepse.png",
                          12.65,
                          Color(0xffF78C94),
                          "Apple Joice"),
                    ),
                  );
                },
                child: DrinkOptions(
                    "Apple Joice",
                    "Every designer awaits their\nchance to work",
                    12.65,
                    "images/pepse.png",
                    Color(0xffF78C94),
                    Color(0xffF78C94)),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          Color(0xffF8CCE3),
                          "images/pineable.png",
                          12.65,
                          Color(0xffF8CCE3),
                          "Pineable Joice"),
                    ),
                  );
                },
                child: DrinkOptions(
                    "Pineable Joice",
                    "Every designer awaits their\nchance to work",
                    12.65,
                    "images/pineable.png",
                    Color(0xffF8CCE3),
                    Color(0xffEAC958)),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          Color(0xffEFD0EF),
                          "images/Grape.png",
                          12.65,
                          Color(0xffCAABCA),
                          "Grapes Joice"),
                    ),
                  );
                },
                child: DrinkOptions(
                    "Grapes Joice",
                    "Every designer awaits their\nchance to work",
                    12.65,
                    "images/Grape.png",
                    Color(0xffEFD0EF),
                    Color(0xffCAABCA)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
