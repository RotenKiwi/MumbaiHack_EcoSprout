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
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Splashscreen-2.jpg'),
              colorFilter: ColorFilter.mode(filter, BlendMode.modulate),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', scale: 0.85,),
                  SizedBox(width: 10,),
                  Text(
                    'GrowX',
                    style: TextStyle(
                      fontFamily: 'SF',
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                '   Your Gardening Guide',
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
