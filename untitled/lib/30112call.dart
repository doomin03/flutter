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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text("Exam3"),
          bottom:
          TabBar(

            tabs: [
              Tab(icon: Icon(Icons.call),text: "연락처",),
              Tab(icon: Icon(Icons.image),text: "앨범",)
            ],
          ),
        ),
        body:
          TabBarView(
            children: [
              Container(
                child: ListView(
                  children: [
                    ListTile(title: Text("김양영"),subtitle: Text("010-1000-2000"), trailing: Icon(Icons.call),),
                    ListTile(title: Text("김소프"),subtitle: Text("010-3000-4000"), trailing: Icon(Icons.call),),
                    ListTile(title: Text("박나라"),subtitle: Text("010-5000-6000"), trailing: Icon(Icons.call),)
                  ],
                ),
              ),
              Container(
                child: Image.asset("assets/1.jpg", width: 1000,height: 1000,),
              )
            ],
          )
        )
      

      );

  }
}

