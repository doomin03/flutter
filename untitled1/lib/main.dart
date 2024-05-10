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
  int num = 0;

  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();

  void add() {
    int firstValue = int.parse(_num1.text);
    int secondValue = int.parse(_num2.text);

    num = firstValue + secondValue;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: [
        Text('결과: $num'),
      SizedBox(height: 10,),
      TextField(
        controller: _num1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: "첫 번째 숫자",
        ),
      ),

      TextField(
        controller: _num2,
        keyboardType: TextInputType
            .number,
        decoration: InputDecoration(
          labelText: "두 번째 숫자",
        ),
      ),
          ElevatedButton(
            onPressed: add,
            child: Text("더하기"),
          ),

        ],
      ),
    );
  }
}

