import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomCard.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomCardVertical.dart';
import 'package:week_1_task_antonx/UI/screens/Museum.dart';
import 'package:week_1_task_antonx/core/Colors.dart';

class Warszawa extends StatefulWidget {

  @override
  State<Warszawa> createState() => _WarszawaState();
}

class _WarszawaState extends State<Warszawa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                const SizedBox(height: 30.0),
                Row(
                  children:  [
                    const Expanded(child: Icon(Icons.location_on)),
                    const Text('Warszawa',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey
                    ),
                    ),
                    const Expanded(child: Icon(Icons.keyboard_arrow_down)),
                    const SizedBox(width: 150),
                    Expanded(child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const Museum();
                      }));
                    },
                        icon: const Icon(Icons.arrow_forward)))
                  ],
                ),
                const SizedBox(height: 40,),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle:  const TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w900
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),

                        )
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                        child: Text('Top Visited',
                        style: TextStyle(
                            color: greenColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0
                        ),
                        ),
                      ),
                      Text('View all'),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  //color: Colors.red,
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomCard(takeImage: "assets/pic 1.jpg",
                            description: 'POLING Museum of the history of polish jews',
                            text: 'Tamka 49, 00453',
                            icon1: Icons.article, icon2: Icons.location_on,
                            descriptionColor: blackColor, textColor: greyColor),
                       CustomCard(takeImage: "assets/pic 3.jpg", text: 'Tamka 49, 00453',
                            icon1: Icons.article, icon2: Icons.motorcycle,
                            description: 'Fryderyk chopin Museum',
                           descriptionColor: blackColor, textColor: greyColor),
                       CustomCard(takeImage: "assets/pic 1.jpg", text: 'Tamka 49, 00453',
                            icon1: Icons.article, icon2: Icons.map,
                            description: 'POLING Museum of the history of polish jews',
                            descriptionColor: blackColor,textColor: greyColor),
                    ],
                  )
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('News and Exibitions',
                    style: TextStyle(
                        color: greenColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0
                    ),
                  ),
                ),
                CustomCardVertical(
                    takeImage: 'assets/pic 3.jpg',
                    text: '08 March 2020',
                    icon1: Icons.location_on,
                    description: 'Exibitions: Buildings than and now',
                    textColor: blackColor,
                    icon2: Icons.map
                ),
                CustomCardVertical(
                    takeImage: 'assets/pic 1.jpg',
                    text: '08 March 2020',
                    icon1: Icons.location_on,
                    description: 'Exibitions: Buildings than and now',
                    textColor: blackColor,
                    icon2: Icons.map
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (int selectedIndex){
              setState(() {
                currentIndex = selectedIndex;
              });
            },
            items:  const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ' ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: ' '
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: ' '
              ),

            ],
          ),
        ),
    );
  }
  int currentIndex = 0;
}
