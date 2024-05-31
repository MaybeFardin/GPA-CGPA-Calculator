import 'dart:math';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GPACalculateScreen extends StatefulWidget {


  GPACalculateScreen({super.key, required this.numberOfCourse,});

  final int numberOfCourse;

  @override
  State<GPACalculateScreen> createState() => _GPACalculateScreenState();
}

class _GPACalculateScreenState extends State<GPACalculateScreen> {

  late List<TextEditingController> _controller;

  double creditXgrade = 0;
  double totalCredit = 0;
  
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = List.generate(widget.numberOfCourse * 2, (index) => TextEditingController());
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GPA Calculate'),
        centerTitle: true,
      ),
      body: Column(
        children: [
         Expanded(
             child: ListView.builder(
                 itemCount: widget.numberOfCourse,
                 itemBuilder: (context, index) {
                   return Padding(
                   padding: EdgeInsets.symmetric(horizontal: 40.0),
                     child: Row(
                       children: [
                         Expanded(
                             child: TextField(
                               decoration: InputDecoration(
                                 hintText: 'Course ${index+1} Credit'
                               ),
                               controller: _controller[index * 2],
                             ),
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                             child: TextField(
                           decoration: InputDecoration(
                             hintText: 'Course ${index+1}Grade'
                           ),
                           controller: _controller[index * 2 + 1],
                         )),
                       ],
                     ),
                   );
                 },
            ),
        ),
        SizedBox(height: 50,),
        ElevatedButton(onPressed: (){
          try{
            for(int i = 0; i< widget.numberOfCourse; i=i+2)
              {
                double credit = double.parse(_controller[i * 2].text);
                double grade = double.parse(_controller[i * 2 + 1].text);

                creditXgrade = creditXgrade + credit * grade;
                totalCredit = totalCredit + credit;
              }
            double gpa = creditXgrade / totalCredit;

            print(gpa);
          }
          catch(e)
          {
            print(e);
          }

    }, child: Text('Calculate')),
    SizedBox(height: 200,),
    
    

        ],
      ),
    );
  }
}
