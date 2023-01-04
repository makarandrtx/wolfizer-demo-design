import 'package:flutter/material.dart';

class UserScreenCard extends StatelessWidget {
  const UserScreenCard(
      {required this.cardText,
      required this.color,
      required this.icon,
      super.key});
  final String cardText;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 70),
              child: Icon(
                icon,
                size: 125,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: Text(
                cardText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ));
  }
}
