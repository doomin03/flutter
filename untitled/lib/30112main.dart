import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.deepPurple,
      ),
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(

              child: Image.asset("assets/mor.jpg" ,width: 1000,),
            ),

            Text("Moraine lake"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.call),
                    Text("call")
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  children: [
                    Icon(Icons.near_me),
                    Text("ROUTE")
                  ],
                ),
              ],
            ),
            Text("The waters of Moraine Lake seem like they have been poured straight from the heavens into the Valley of the Ten Peaks. The towering mountains encircle the deep blue surface of the lake in a formation so extraordinary, only Mother Nature could shape it.Piles of boulders have been seemingly dropped by the hands of giants, forming miniature mountains near the lakeshore. Let yourself be drawn to the trails that wind amongst the rocks and travel beyond to alpine meadows and sparkling lakes"),
            ElevatedButton(onPressed:null, child: Icon(Icons.print))
          ],
        )

      ,
    );
  }
}

