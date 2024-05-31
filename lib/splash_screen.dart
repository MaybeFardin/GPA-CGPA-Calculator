import 'package:cgpa_calculate/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          
          children: [                                                                                                                                                                                          

            Text('CGPA calculator', style: TextStyle(fontSize: 40),),
            SizedBox(height: 30,),
            Icon(Icons.calculate_rounded,size: 40,),
            SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)
            {
              return HomeScreen();
            }),   (route) => false);
          },

              child: Padding(
            padding: EdgeInsets.all(10.0),

                child: Text('Get Started', style: TextStyle(fontSize: 24,color: Colors.amber), ),
          ))


          ],
        ),
      ),
    );
  }
}
