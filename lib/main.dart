import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: IDCard(),
  ));
}

class IDCard extends StatefulWidget {
  @override
  State<IDCard> createState() => _IDCardState();
}

class _IDCardState extends State<IDCard> {
  int level =0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body:
      Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
        child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Text(
                      'NAME',
                       style:TextStyle(
                           fontSize: 20.0
                ),
            ),
                Text(
                  'Swapnil Khare',
                  style:TextStyle(
                      fontSize: 30.0
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'DESIGNATION',
                  style:TextStyle(
                      fontSize: 20.0
                  ),
                ),
                Text(
                  'Software Engineer',
                  style:TextStyle(
                      fontSize: 30.0
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Level',
                  style:TextStyle(
                      fontSize: 20.0
                  ),
                ),
                Text(
                  '$level',
                  style:TextStyle(
                      fontSize: 30.0
                  ),
                ),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}


