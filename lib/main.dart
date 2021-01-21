import 'package:flutter/material.dart';
import 'package:inventory/Models/globle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(
                children: [
                  Container(
                    color: darkGreyColor,
                  ),
                  Container(
                    color: Colors.orange,
                  ),
                  Container(
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                height: 160.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Inventory",
                      style: inventoryText,
                    ),
                    Container()
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                margin: EdgeInsets.only(
                    top: 130,
                    left: MediaQuery.of(context).size.width * 0.5 - 40),
                child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size: 70,
                    ),
                    backgroundColor: redColor,
                    onPressed: () {}),
              )
            ]),
            appBar: AppBar(
              elevation: 0,
              title: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_identity),
                  ),
                ],
                labelColor: darkGreyColor,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
