import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Hanna Barbara', text: 'quote one'),
    Quote(author: 'Anna Borodin', text: 'quote two'),
    Quote(author: 'Charlie Oscar', text: 'quote three'),
  ];

  Widget qouteTemplate(quote) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.fromLTRB(16.0, 18.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 1.5),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14.0,
                  letterSpacing: 1.3),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
          child: Text(
            'Quote List',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.8,
            ),
          ),
        ),
      ),
      body: Column(
        children: quotes
            .map((quote) => qouteTemplate(quote))
            .toList(),
      ),
    );
  }
}
