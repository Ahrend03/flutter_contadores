import 'dart:math';

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  State<Contador> createState() => _Contador();
}


class _Contador extends State<Contador>{
  int n1 =0;
  int n2 =0;
  int n3 =0;
  int n4 =0;
  int n5 =0;
  int total =0;
  @override
  Widget build(BuildContext context) {
    total=n1+n2+n3+n4+n5;
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: 
      FloatingActionButton(
        onPressed: (){
          n1 = n2 = n3 = n4 = n5 = total = 0;
          setState(() {});
        },
        child: Text("Reset", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
        ),
      appBar: AppBar(title: Text("Contador"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$total",
            style: TextStyle(color: Colors.yellow,fontSize: 30),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Contador 1",
                       style: TextStyle(color: Colors.yellow,fontSize: 30)),
                       Text("$n1", style: TextStyle(color: Colors.yellow,fontSize: 30)),
                      ElevatedButton(
                    onPressed:(){
                     n1++;
                      setState(() {});
                    },
                   child: Text("add"),
                   )
                ],
                  ),
                  Column(
                    children: [
                      Text("Contador 2",
                       style: TextStyle(color: Colors.yellow,fontSize: 30)),
                       Text("$n2", style: TextStyle(color: Colors.yellow,fontSize: 30)),
                      ElevatedButton(
                    onPressed:(){
                     n2++;
                     total+=n2;
                      setState(() {});
                    },
                   child: Text("add"),
                   )
                ],
                ),
                ],
              ),
              Divider(),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Contador 3",
                       style: TextStyle(color: Colors.yellow,fontSize: 30)),
                       Text("$n3", style: TextStyle(color: Colors.yellow,fontSize: 30)),
                      ElevatedButton(
                    onPressed:(){
                     n3++;
                     total+=n3;
                      setState(() {});
                    },
                   child: Text("add"),
                   )
                ],
                  ),
                  Column(
                    children: [
                      Text("Contador 4",
                       style: TextStyle(color: Colors.yellow,fontSize: 30)),
                       Text("$n4", style: TextStyle(color: Colors.yellow,fontSize: 30)),
                      ElevatedButton(
                    onPressed:(){
                     n4++;
                     total+=n1;
                      setState(() {});
                    },
                   child: Text("add"),
                   )
                ],
                ),
                ],
              ),
              Divider(),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Contador 5",
                       style: TextStyle(color: Colors.yellow,fontSize: 30)),
                       Text("$n5", style: TextStyle(color: Colors.yellow,fontSize: 30)),
                      ElevatedButton(
                    onPressed:(){
                     n5++;
                     total+=n5;
                      setState(() {});
                    },
                   child: Text("add"),
                   )
                ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
          ],
          ),
        ),
    );
  }
}