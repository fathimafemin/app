import 'package:flutter/material.dart';
import 'package:quiz/quest.dart';

class Quistion extends StatefulWidget {
  const Quistion({Key? key}) : super(key: key);

  @override
  State<Quistion> createState() => _QuistionState();
}

class _QuistionState extends State<Quistion> {
  List quest=[
    Quiz(quis: 'College is for study',ans:true ),
    Quiz(quis: 'Cat is a domestic animal',ans:true),
    Quiz(quis: 'Sky color is blue',ans: true),
    Quiz(quis: 'Book is made by paper',ans: true),
    Quiz(quis: 'cat have 5 legs',ans: false),
    Quiz(quis: 'Banana is yellow in color',ans:true),
    Quiz(quis: 'Banana is a fruit',ans: true),
    Quiz(quis: 'Grapes is a vegetable',ans: false),
    Quiz(quis: 'Mango is a food',ans: true),
    Quiz(quis: 'mango is a fruit',ans: true),
  ];
  int index=0;
  void next(){
    print(index);
    if(index<quest.length) {
      setState(() {
        index++;
      });

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(quest[index].quis,
                style: TextStyle(
                  color: Colors.cyan.withOpacity(0.8),
                  height: 12,
                  fontSize: 34,
                )),
          ),
          Container(color: Colors.black,
            width: 150,
            child:TextButton(onPressed: () {next();}, child: Text('YES',style: TextStyle(color: Colors.white),)),),
          SizedBox(
            height: 30,
          ),
          Container(color: Colors.black,
            width: 150,

            child: TextButton(onPressed: () {next();}, child: Text('NO',style: TextStyle(color: Colors.white),)),),
        ],
      ),
    );
  }
}


