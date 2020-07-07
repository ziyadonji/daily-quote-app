
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quoteCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List quotes = [
    Quotes(
        text: "*No problem should ever have to be solved twice",
        author: 'ziyad'),
    Quotes(text: "*Attitude is no substitute for competence", author: 'onji'),
    Quotes(
        text: "*Within a computer natural language is unnatural",
        author: 'jomartho'),
    Quotes(
        text: "*A little learning is a dangerous thing", author: 'suratippans'),
    Quotes(
        text: "*There really is no learning without doing.",
        author: 'konaappan')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Daily Quotes",
            style: TextStyle(fontFamily: "Dancing"),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.blue),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map(
              (e) {
                return Quotecard(e: e,
                delete: (){
                  setState(() {
                    quotes.remove(e);
                  });
                },);
              },
            ).toList()),
      ),
    );
  }
}

