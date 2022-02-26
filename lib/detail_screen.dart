import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  //const DetailScreen({ Key? key }) : super(key: key);

  final Color color;
  final image;
  final price;
  final Color buttonColor;
  final name;

  DetailScreen(this.color, this.image, this.price, this.buttonColor, this.name);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffFFD2D7),
                              borderRadius: BorderRadius.circular(18)),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 100,
                    //right: 0,
                    child: Image(height: 300, image: AssetImage(widget.image)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                widget.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Lemonade Joice",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.price * amount}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 40,
                    width: 105,
                    decoration: BoxDecoration(
                        color: widget.buttonColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (amount > 1) {
                                amount--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          amount.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (amount >= 1) {
                                amount++;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Text(
                "About Product",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Text(
                "Almost every designer awaits their turn and chance to work on big projects such as food",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12),
              child: MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                height: 70,
                color: widget.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
