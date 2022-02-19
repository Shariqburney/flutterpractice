import 'package:flutter/material.dart';
import 'package:abdullah/models/ListTileModel.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({  required this.title}) : super();

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                "Bottom Sheet Examples",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                _openBottomSheet(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

void _openBottomSheet(context) {

  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return  Container(
        padding: EdgeInsets.all(5.0),
        child:  Wrap(
          children: [
            getListTile(Icons.label, Colors.black45, "More", context),
            Divider(
              thickness: 10,
              height: 10.0,
            ),
            getListTile(Icons.favorite, Colors.pink, "Favourites", context),
            Divider(
              thickness: 10,
              height: 10.0,
            ),
            getListTile(Icons.account_box, Colors.blue, "Profile", context),
             Divider(
              thickness: 10,
              height: 10.0,
            ),
            getListTile(Icons.exit_to_app, null, "Logout", context),
          ],
        ),
      );
    },
  );
}
