import 'package:flutter/material.dart';
import 'package:demo_project/user_screen.dart';

class FolderScreen extends StatefulWidget {
  static String id = 'folder_screen';
  const FolderScreen({super.key});

  @override
  State<FolderScreen> createState() => _FolderScreenState();
}

class _FolderScreenState extends State<FolderScreen> {
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
                left: 20, top: MediaQuery.of(context).size.height * 0.15),
            child: const Text(
              'Create A Folder',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 129, top: MediaQuery.of(context).size.height * 0.250),
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Colors.grey.shade400,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: MediaQuery.of(context).size.height * 0.55),
            child: const TextField(
              decoration: InputDecoration(hintText: 'Folder Name'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: MediaQuery.of(context).size.height * 0.655),
            child: const TextField(
              decoration: InputDecoration(hintText: 'Crop Categories'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: MediaQuery.of(context).size.height * 0.760),
            child: const TextField(
              decoration: InputDecoration(hintText: 'Botanical Varieties'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.25,
                top: MediaQuery.of(context).size.height * 0.85),
            child: Material(
              elevation: 5.0,
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(15.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, UserScreen.id);
                  });
                },
                minWidth: 200.0,
                height: 42.0,
                child: const Text(
                  'Create Folder',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
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
      ]),
    );
  }
}
