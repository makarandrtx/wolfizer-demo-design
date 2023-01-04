import 'package:demo_project/folder_screen.dart';
import 'package:demo_project/phone.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInScreen extends StatefulWidget {
  static String id = 'signin_screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  dynamic drodownvalues = "India";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.15,
              left: MediaQuery.of(context).size.width * 0.4),
          child: const Icon(Icons.arrow_back, size: 80.0),
        ),
        Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.28,
              left: MediaQuery.of(context).size.width * 0.09),
          child: const Text(
            'Sign In',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.black87,
                fontWeight: FontWeight.w800),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.345,
              left: MediaQuery.of(context).size.width * 0.09),
          child: const Text(
            'Enter your mobile number',
            style: TextStyle(
                fontSize: 17.0,
                color: Colors.black87,
                fontWeight: FontWeight.w700),
          ),
        ),
        // const Text('Phone'),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 70, 35, 0),
              child: DropdownButton(
                isExpanded: true,
                value: drodownvalues,
                elevation: 10,
                items: ["India", "Canada", "USA", "London", "Australia"]
                    .map((dynamic value) => DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 18),
                        )))
                    .toList(),
                onChanged: (newmenuitem) {
                  setState(() {
                    drodownvalues = newmenuitem;
                  });
                },
              ),
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: IntlPhoneField(
                decoration: InputDecoration(
                    // labelText: 'Enter mobile number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0))),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  // print(phone.completeNumber);
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.566,
              left: MediaQuery.of(context).size.width * 0.265),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 5.0,
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(15.0),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, MyPhone.id);
                    });
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.885,
              left: MediaQuery.of(context).size.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextButton(
                  onPressed: (/*implement signin functionality*/) {},
                  child: const Text('Sign Up',
                      style: TextStyle(fontWeight: FontWeight.w700))),
            ],
          ),
        )
      ],
    ));
  }
}
