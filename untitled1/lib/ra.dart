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

enum Gender {
  man,woman
}

class _MyHomePageState extends State<MyHomePage> {
  @override


  Gender _gender = Gender.man;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: [
          ListTile(
            title: Text("남자"),
            leading: Radio(
              value: Gender.man,
              groupValue: _gender,
              onChanged: (value){
                setState(() {
                  _gender = value as Gender;
                });
              },
            ),
          ),
          ListTile(
            title: Text("여자"),
            leading: Radio(
              value: Gender.woman,
              groupValue: _gender,
              onChanged: (value){
                setState(() {
                  _gender = value as Gender;
                });
              },
            ),
          )

        ],
      ),
    );
  }
}

