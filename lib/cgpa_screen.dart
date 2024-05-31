
import 'package:flutter/material.dart';

class CGPACalculateScreen extends StatefulWidget {
  const CGPACalculateScreen({super.key, required numberOfCourse});

  @override
  State<CGPACalculateScreen> createState() => _CGPACalculateScreenState();
}

class _CGPACalculateScreenState extends State<CGPACalculateScreen> {
  TextEditingController _numberOfCourseETContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Enter number Course you taken: '),
              const SizedBox(height: 20,),
              TextField(
                controller: _numberOfCourseETContoller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Number of Course',
                    hintText: 'Enter number of course'
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CGPACalculateScreen(numberOfCourse: int.parse(_numberOfCourseETContoller.text));
                  }));
                },
                child: const Text('Enter'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
