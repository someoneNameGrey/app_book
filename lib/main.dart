import 'package:flutter/material.dart';

void main() => runApp(AppBook());

class AppBook extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "App Books",
      home: new BookList(),
    );
  }
}

class BookList extends StatefulWidget{
  @override
  State createState() => new BookListState();
}

class BookListState extends State<BookList>{
  final List<BookTitle> _messages = <BookTitle>[];

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Book List'),
      ),
      body:Text('Books'),
    );
  }
}

class BookTitle extends StatelessWidget{
  BookTitle(this.title);
  final String title;
  
  @override
  Widget build(BuildContext context){
    return new Text('Book Title');
  }
}