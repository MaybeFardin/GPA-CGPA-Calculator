import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CGPACalculateScreen extends StatefulWidget {
  const CGPACalculateScreen({super.key, required this.numberOfCourse});

  final int numberOfCourse;

  @override
  State<CGPACalculateScreen> createState() => _CGPACalculateScreenState();
}

class _CGPACalculateScreenState extends State<CGPACalculateScreen>{

  late List<TextEditingController> _controllers;

  double creditXgrade = 0;
  double totalCredit = 0;

  @override
  void initstate(){
    super.initState();

    _controllers = List.generate(widget.numberOfCourse * 2, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CGPA Calculate'),
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
                          controller: _controllers[index * 2 ],
                        ),
                      ),

                      // [0 1 2 3 4 5 6 7 8 9 10]
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Course ${index+1} Grade'
                            ),
                            controller: _controllers[index * 2 + 1],
                          )),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(
              onPressed: (){

                try{

                  for(int i = 0; i< widget.numberOfCourse; i=i+2)
                  {
                    double credit = double.parse(_controllers[i * 2].text);
                    double grade = double.parse(_controllers[i * 2  + 1 ].text);

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
