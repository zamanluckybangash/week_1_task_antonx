import 'package:flutter/material.dart';

class CustomCardVertical extends StatelessWidget {

  final takeImage;
  final description;
  final text;
  final textColor;
  IconData icon1;
  IconData icon2;
  CustomCardVertical({required this.takeImage , required this.text, required this.icon1 , required this.description,
    required this.textColor, required this.icon2
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      height: 120,
      width: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image(
              image: AssetImage(takeImage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 160,
              width: 120,
              child: Column(
                children: [
                  Text( text,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(description,
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w700
                        )
                    ),
                  ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(icon1),
                    SizedBox(height: 4,),
                    Text(text,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                )
              )
                ],
              ),
            ),
          ),
           Expanded(child: Icon(icon2),
          )
        ],
      ),
    );
  }
}
