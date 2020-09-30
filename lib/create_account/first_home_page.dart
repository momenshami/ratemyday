import 'package:flutter/material.dart';

class FirstHomePage extends StatefulWidget {
  @override
  _FirstHomePageState createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تقييم يومي"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Text("")),
            Expanded(
              child: RaisedButton(
                color: Colors.blueGrey,
                child: Text('Go to Login_page'),
                onPressed: () => Navigator.pushNamed(context, '/login'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: RaisedButton(
                color: Colors.grey,
                child: Text('Go to create account'),
                onPressed: () =>
                    Navigator.pushNamed(context, '/create_account'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: Text(
              "Every day is a new day. It is better to be lucky. But I would rather be exact. Then when luck comes you are ready.",
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }
}
