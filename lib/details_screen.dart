import 'package:flutter/material.dart';
import 'package:flutter_app/client.dart';

class DetailsScreen extends StatelessWidget {
  final Client item;

  DetailsScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${item.name}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(item.company, style: TextStyle(fontSize: 20, color: Colors.red),),
            Text(item.name),
            Text(item.email),
          ],
        ),
      ),
    );
  }
}
