import 'package:flutter/material.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomButton.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomCardVertical.dart';
import 'package:week_1_task_antonx/core/Colors.dart';

import 'LogInScreen.dart';

class PollingMuseum extends StatefulWidget {
  const PollingMuseum({Key? key}) : super(key: key);

  @override
  State<PollingMuseum> createState() => _PollingMuseumState();
}

class _PollingMuseumState extends State<PollingMuseum> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                child: Image.asset("assets/pic 1.jpg"),
                height: 380,
              ),
              Image.asset("assets/pic 1.jpg"),
              ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 300.0,bottom: 70),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          //color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('POLIN Museum',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.0
                                      ),),
                                    Card(
                                      child: Icon(Icons.photo_album,size: 40,),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: RichText(
                                          text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "It is a historical Museum which "
                                                        "presents the 100 years of"
                                                        "Jewswish life in the polish lands. "
                                                        "it is also a place of...",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w600
                                                    )
                                                ),
                                                TextSpan(
                                                    text: 'more',
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight: FontWeight.w600
                                                    )
                                                )
                                              ]
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                             // SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6.0),
                                        child: const Image(
                                          image: AssetImage('assets/pic 1.jpg'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Column(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(right: 45.0),
                                          child: Text('Anielewicza',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5.0,),
                                        Text("00-157 , Warszawa",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              //SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6.0),
                                        child: const Image(
                                          image: AssetImage('assets/pic 3.jpg'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25.0),
                                    child: Column(
                                      children: const [
                                        Text('Today open',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                   Padding(
                                    padding: EdgeInsets.only(top: 20.0,left: 5.0),
                                    child: DropdownButton<String>(

                                      dropdownColor: Colors.white,
                                      items: dropdownItems.map((String iteratedCurrency) {
                                        return DropdownMenuItem<String>(
                                            value: iteratedCurrency,
                                            child: Text(iteratedCurrency)
                                        );
                                      }
                                      ).toList(),
                                      onChanged: (String? userSelectItem){
                                        setState(() {
                                          dropdownCurrentItem=userSelectItem;
                                        });
                                      },
                                      value: dropdownCurrentItem,
                                    )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('News',
                    style: TextStyle(
                      color: greenColor,
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: CustomCardVertical(
                        takeImage: 'assets/pic 1.jpg',
                        text: '9 March 2020',
                        icon1: Icons.article,
                        description: 'Exibition: Modern Love and others',
                        textColor: greyColor,
                        icon2: Icons.map
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: CustomCardVertical(
                        takeImage: 'assets/pic 3.jpg',
                        text: '9 March 2020',
                        icon1: Icons.article,
                        description: 'Exibition: Modern Love and others',
                        textColor: greyColor,
                        icon2: Icons.map
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 665,left: 29.0,right: 1.0,bottom: 1),
                child:  CustomButton(
                    buttonColor: lightRed,
                    textColor: blackColor,
                    buttonName: 'Buy Ticket',
                    onPressed: LogInScreen(),
                  ),
              ),
            ],
          )
          ),
    );
  }

  var dropdownItems = ['ohh baby','Hello','Hi','bye'];

  String? dropdownCurrentItem = 'Hi';
}
