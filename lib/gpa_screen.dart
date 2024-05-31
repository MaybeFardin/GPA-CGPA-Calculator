import 'package:flutter/material.dart';

import 'gpa_calculate_screen.dart';

class GPAScreen extends StatefulWidget {
  const GPAScreen({super.key});

  @override
  State<GPAScreen> createState() => _GPAScreenState();
}

class _GPAScreenState extends State<GPAScreen> {
  TextEditingController _numberOfCourseETController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Enter the number of course: '),
              SizedBox(height: 20,),
              TextField(
                controller: _numberOfCourseETController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number of course',
                  hintText: 'Enter number of course',
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                     return GPACalculateScreen(numberOfCourse: int.parse(_numberOfCourseETController.text),);
                    }));
                  }, child: Text('Enter'))
            ],
          ),
        ),
      ),

    );
  }
}


