import 'package:flutter/material.dart';
import 'package:flutter_app/client.dart';
import 'package:flutter_app/details_screen.dart';

class ListElement extends StatelessWidget {
  final Client client;

  ListElement(this.client);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(client.id.toString()),
      ),
      title: Text(client.company),
      subtitle: Text(client.name),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(client),
            ));
      },
    );
  }
}
