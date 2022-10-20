import 'package:assignment1/rowsAndcolumns.dart';
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
      home: const ThirdRoute(title: 'Flutter Demo Home Page'),
    );
  }
}

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({super.key, required this.title});



  final String title;

  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Wrap(
        spacing: 30,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color:Colors.blue
              ),
              child: const Text(
                'LOL',
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
                'You',
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
                'You',
              ),
            ),
            const SizedBox(width: 115),

            InkWell(
             onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FourthRoute(title: 'Flutter Demo Home Page')));
             },
           child: Ink(
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color:Colors.blue
              ),
              child: const Text(
                'Next',
              ),
    ),
    ),
            ],
            ),
        );
     // This trailing comma makes auto-formatting nicer for build methods.
  }
}
