import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Widget Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Drawer(backgroundColor: Colors.black,),
      appBar: AppBar(title: Text("LOGO",
        style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [Icon(Icons.notifications_active_outlined,
          color: Colors.black,),
        ],
        leading: Icon(Icons.menu_sharp, color: Colors.black,),
        // elevation: 1.0,
        shadowColor: Colors.white,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:12.0, right: 20.0, left: 20.0, bottom: 30.0),
            padding: EdgeInsets.all(5.0),
            constraints: BoxConstraints.expand(height:200,width: 400),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromARGB(50, 259, 229, 254),),
            alignment: Alignment.bottomRight,
            child: Image.asset("asset/images/Group27.png",
            height: 120,
            fit: BoxFit.fitWidth,
          ),
        ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(60.0),
            alignment: Alignment.topLeft,
            child: Text(
            'Lorem ipsum \nlorem',
            style: TextStyle(
                color: Colors.blue,
                wordSpacing: 1.0,
                fontFamily: "Play",
                fontWeight: FontWeight.w900, fontSize: 22.0),
           )
          ),

          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(3.0),
                  constraints: BoxConstraints.expand(height:170,width: 167),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                      color: Colors.teal,),
                  alignment: Alignment.topLeft,
                  // width: 10, height: 100,
                  child: Image.asset("asset/images/Group.png",
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
                  Container(
                    alignment: Alignment.center,
                    child: Text("Assigned \nPackage",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "Play",
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(1.0),
                  padding: EdgeInsets.all(3.0),
                  constraints: BoxConstraints.expand(height: 100, width: 38),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  alignment: Alignment.bottomLeft,
                  // child: Image.asset("asset/images/Market.png",
                  //   height: 50,
                  //   fit: BoxFit.contain,
                  // ),
                ),
                  Container(
                    child: const Text(
                      'Packages',
                      style: TextStyle(fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Play",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
              ],
            ),
          ),
          ],
      ),

    ),
    );
  }
}
