import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final takeImage;
  final description;
  final text;
  Color descriptionColor;
  Color textColor;
  IconData icon1;
  IconData icon2;
  CustomCard({required this.takeImage , required this.description,required this.text, required this.icon1 ,
     required this.descriptionColor,required this.textColor ,required this.icon2
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      height: 170,
      width: 190,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image(
                image: AssetImage(takeImage),
              ),
            ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Text(description,
                      style: TextStyle(
                        color: descriptionColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),)),
                      Icon(icon1),
                  ],
                ),
              ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon2),
                  SizedBox(width: 4,),
                  Text(text,
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w700
                      ),
                  ),
                ],
              ),
            )
          ],
      ),
    );
  }
}
