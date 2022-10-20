import 'package:assignment1/Row.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SecondRoute(title: 'Flutter Demo Home Page'),
    );
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key, required this.title});



  final String title;

  @override
  State<SecondRoute> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondRoute> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),

        body: Column(

          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                    color:Colors.blue
              ),
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color:Colors.blue
              ),
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color:Colors.blue
              ),
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            Padding(
              // padding: const EdgeInsets.all(90.0),
              padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 157.0),
              child: Row(
               children: <Widget>[
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ThirdRoute(title: 'Flutter Demo Home Page')));
                  },
                child:Ink(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color:Colors.blue
                  ),
                  child: const Text(
                    'Next',
                  ),
                ),
              ),
              ),
    ],
              ),
            ),

          ],
        ),

      );

       // This trailing comma makes auto-formatting nicer for build methods.
  }
}
