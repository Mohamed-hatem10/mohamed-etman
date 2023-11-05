

import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { 


  int i = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("CounterApp(Task1)")),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            i=0;
          });
        },
        child:const Icon(
          Icons.exposure_zero),

        ),
        
        body:
        Column(
        
        children:[
          
            
          Container(

            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(160,20, 0, 0),
            child: Row(children: [
              Text("this is first task" ,style: TextStyle(fontSize: 20))
            ]),
          ),
          Container(
            
            
             alignment: Alignment.center,
           padding: EdgeInsets.fromLTRB(225, 75, 0, 0),
            child:Row(
              
              children:[
            Text("$i",style:  TextStyle(color: Colors.red,fontSize: 30, ),
             textAlign: TextAlign.center 
            ),
        ])),
         Container( 
          

          alignment: Alignment.center,
           padding: EdgeInsets.fromLTRB(150, 100, 100, 135),
          child: Row(
            children: [
              
            
          IconButton(onPressed: () { 
            
            setState(() {
               i++;
            });

           }, iconSize: 75, icon: const Icon(Icons.add_circle_rounded ,color: Colors.blue)),

           
            IconButton(onPressed: () {
            setState(() {
              i--;
            });
            }, 
iconSize: 75,
             icon: const Icon(Icons.remove_circle_rounded ,color: Colors.blue,)),

            ],
         )),
         
         ])),
    );
  }
}

















