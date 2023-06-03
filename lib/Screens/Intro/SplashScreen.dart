import 'package:flutter/material.dart';
import 'package:green_thumb/Screens/Login/Login.dart';
import 'package:green_thumb/palette.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Splashscreen.jpg'),
              colorFilter: ColorFilter.mode(filter, BlendMode.modulate),
              fit: BoxFit.cover,
            ),
          )
        ),
      ),
    );
  }
}
