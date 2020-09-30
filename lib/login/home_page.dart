import 'package:flutter/material.dart';
import 'package:ratemyday/model/questions.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        title: new Text("Rate My day!"),
    ),
    body:ListDisplay()) ;
  }
}


class ListDisplay extends StatefulWidget {
  @override
  DyanmicList createState() => DyanmicList();
}

class DyanmicList extends State<ListDisplay> {
  List<String> litems = [];
  final TextEditingController eCtrl = new TextEditingController();

  @override
  Widget build(BuildContext ctxt) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),

            Text(
              "What do you wanna do tomorrow?",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Card(
              child: new TextField(
                controller: eCtrl,
                cursorColor: Colors.grey,
                onSubmitted: (text) {
                  litems.add(text);
                  eCtrl.clear();
                  setState(() {});
                },
              ),
            ),
            new Expanded(
                child: new ListView.separated(
              itemCount: litems.length,
              itemBuilder: (BuildContext ctxt, int Index) {
                return Container(
                    decoration: BoxDecoration(
//                      color: Colors.grey,
                        border:
                            Border(bottom: BorderSide(color: Colors.blueGrey))),
                    height: 50.0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              litems[Index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.blueGrey,
                            )
                          ],
                        ),
                      ],
                    ));
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            )),
          ],
        );
  }
}

Widget _buildRow() {
  final alreadySaved = Set();
  return ListTile(
    title: Text(
      questions[0],
      style: TextStyle(fontSize: 20),
    ),
//    trailing: Icon(
//      alreadySaved ? Icons.favorite : Icons.favorite_border,
//      color: alreadySaved ? Colors.red : null,
//    ),
//    onTap: () {      // NEW lines from here...
//      setState(() {
//        if (alreadySaved) {
//          _saved.remove(pair);
//        } else {
//          _saved.add(pair);
//        }
//      });
//    },               // ... to here.
  );
}
