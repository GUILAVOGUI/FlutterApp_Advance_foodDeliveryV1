import 'package:flutter/material.dart';
import 'package:food_orderv1/scr/helpers/screen_navigation.dart';
import 'package:food_orderv1/scr/helpers/style.dart';
import 'package:food_orderv1/scr/screens/login.dart';
import 'package:food_orderv1/scr/widgets/custom_text.dart';

class RegistrationScreen extends StatefulWidget {
  // const Registration({ Key? key }) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "images/logo.png",
                width: 150,
                height: 240,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "UserName",
                        border: InputBorder.none,
                        icon: Icon(Icons.person)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        icon: Icon(Icons.lock)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: 'Register',
                            size: 23,
                            color: white,
                            weight: FontWeight.bold)
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                changeScreen(context, LoginScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'Login here!',
                      size: 20,
                      color: black,
                      weight: FontWeight.normal),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
