import 'package:demo_project/components/user_screen_card.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  static String id = 'user_screen';
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 55),
                child: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 45,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, top: 55),
                child: Icon(
                  Icons.info_rounded,
                  size: 45,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20.0, top: MediaQuery.of(context).size.height * 0.15),
            child: const Text(
              'Home',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20.0, top: MediaQuery.of(context).size.height * 0.245),
            child: Text('Crop Group',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade800)),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20, top: MediaQuery.of(context).size.height * 0.325),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                UserScreenCard(
                  color: Colors.white,
                  cardText: 'Horticulture',
                  icon: Icons.coffee,
                ),
                UserScreenCard(
                  color: Colors.white,
                  cardText: 'Vegetables',
                  icon: Icons.food_bank_rounded,
                ),
                UserScreenCard(
                  color: Colors.white,
                  cardText: 'Fruits',
                  icon: Icons.discord_sharp,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20, top: MediaQuery.of(context).size.height * 0.70),
            child: Text('Recent Folders',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade800)),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20, top: MediaQuery.of(context).size.height * 0.750),
            width: 375,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  color: Colors.grey.shade300,
                  child: const Text(
                    'Coffee\n 0 bags',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  color: Colors.grey.shade300,
                  child: const Text(
                    'Tea \n 0 bags',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  color: Colors.grey.shade300,
                  child: const Text(
                    'Weed \n 0 bags',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
              label: 'home',
              backgroundColor: Colors.blueGrey.shade200),
          BottomNavigationBarItem(
              icon: const Icon(Icons.apple_outlined),
              label: 'Apple',
              backgroundColor: Colors.blueGrey.shade200),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_bag_rounded),
              label: 'Bag',
              backgroundColor: Colors.blueGrey.shade200),
          BottomNavigationBarItem(
              icon: const Icon(Icons.view_carousel_rounded),
              label: 'View',
              backgroundColor: Colors.blueGrey.shade200),
        ],
      ),
    );
  }
}
