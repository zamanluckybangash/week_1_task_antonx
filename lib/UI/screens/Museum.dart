import 'package:flutter/material.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomCard.dart';
import 'package:week_1_task_antonx/UI/custom_widget/TopViewTextList.dart';
import 'package:week_1_task_antonx/UI/screens/PolinMuseum.dart';
import 'package:week_1_task_antonx/core/Colors.dart';

class Museum extends StatelessWidget {
  const Museum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Museum',
                        style: TextStyle(
                            color: greenColor,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900),
                      ),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const PollingMuseum();
                        }));
                      },
                          icon: const Icon(Icons.arrow_forward))
                    ],
                  ),
                    const SizedBox(height: 30,),
                    Container(
                    height: 50,
                        //color: Colors.red,
                        child:  ListView(
                                    scrollDirection: Axis.horizontal,
                                    children:  [
                                      TopViewText(text: 'Top Visited',onpressed: (){},textColor: Colors.indigo,),
                                      TopViewText(text: 'Art',onpressed: (){},textColor: Colors.grey,),
                                      TopViewText(text: 'History',onpressed: (){},textColor: Colors.deepPurpleAccent,),
                                      TopViewText(text: 'Military',onpressed: (){},textColor: Colors.blueGrey,),
                                      TopViewText(text: 'Science',onpressed: (){},textColor: Colors.green,),
                                    ],
                                  ),
                        ),
                   SizedBox(
                     height: 340,
                     width: 360,
                     child: CustomCard(
                          takeImage: 'assets/pic 1.jpg',
                          description: 'POLING Museum of the history of polish jews',
                          text: 'Aneilevicza 6-00-157',
                          icon1: Icons.location_on,
                          descriptionColor: blackColor,
                          textColor: greyColor,
                          icon2: Icons.article),
                   ),
                  SizedBox(
                    height: 340,
                    width: 360,
                    child: CustomCard(
                        takeImage: 'assets/pic 3.jpg',
                        description: 'Fryderyk chopin Museum',
                        text: 'Palac Gninskich 00-668',
                        icon1: Icons.location_on,
                        descriptionColor: blackColor,
                        textColor: greyColor,
                        icon2: Icons.article),
                  ),
                  SizedBox(
                    height: 340,
                    width: 360,
                    child: CustomCard(
                        takeImage: 'assets/pic 1.jpg',
                        description: 'POLING Museum of the history of polish jews',
                        text: 'Aneilevicza 6-00-157',
                        icon1: Icons.location_on,
                        descriptionColor: blackColor,
                        textColor: greyColor,
                        icon2: Icons.article),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}
