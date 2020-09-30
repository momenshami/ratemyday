import 'package:flutter/material.dart';
import 'create_account/create_account.dart';
import 'create_account/first_home_page.dart';
import 'login/log_in.dart';
import 'create_account/first_home_page.dart'; 
import 'login/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
//      theme: ThemeData.dark(),

      home: FirstHomePage(),
      routes: {
        '/create_account': (context) => create_account(),
        '/login': (context) => LoginScreen(),
      },//      home: create_account(),
//      home: LoginScreen(),
//    home: ListDisplay(),
//      home: Scaffold(
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Card(
//                child: InkWell(
////                focusColor: Colors.blueGrey,
//                  splashColor: Colors.blue.withAlpha(30),
//                  onTap: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => MyHomePage()),
//                    );
//                    print('Card tapped.');
//                  },
//                  child: Container(
//                    decoration: BoxDecoration(
//                      color: Colors.orange,
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                    ),
//                    width: 300,
//                    height: 100,
//                    child: Center(
//                        child: Text(
//                      'Rate My day',
//                      style:
//                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                    )),
//                  ),
//                ),
//              ),
//              Card(
//                child: InkWell(
////                focusColor: Colors.blueGrey,
////                  splashColor: Colors.blue.withAlpha(30),
//                  onTap: () {
//                    print('Card tapped.');
//                  },
//                  child: Container(
//                    decoration: BoxDecoration(
//                        color: Colors.blueGrey,
//                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                    width: 300,
//                    height: 100,
//                    child: Center(
//                      child: Text(
//                        'Plan for Tomorrow!',
//                        style: TextStyle(
//                            fontSize: 25, fontWeight: FontWeight.bold),
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
    );
  }
}
