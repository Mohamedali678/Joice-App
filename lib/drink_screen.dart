import 'package:flutter/material.dart';

class DrinkOptions extends StatefulWidget {
  // const DrinkOptions({
  //   Key? key,
  // }) : super(key: key);

  final joiceName;
  final desc;
  final price;
  final image;
  Color color;
  Color buttonColor;

  DrinkOptions(this.joiceName, this.desc, this.price, this.image, this.color,
      this.buttonColor);

  @override
  State<DrinkOptions> createState() => _DrinkOptionsState();
}

class _DrinkOptionsState extends State<DrinkOptions> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.joiceName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.desc,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "\$${widget.price * amount}",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
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
                            ]),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            height: 210,
            width: 170,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(image: AssetImage(widget.image))),
          )
        ],
      ),
    );
  }
}
