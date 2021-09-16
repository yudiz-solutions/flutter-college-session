import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Home Screen",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              tooltip: 'Add',
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              onTap: () {
                var snackBar = SnackBar(content: Text('Item $index'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              title: Text('Item $index'),
              trailing: const Icon(Icons.more_vert),
              subtitle: const Text('Here is a second line'),
              dense: true,
            ),
          );
        },
      ),
    );
  }
}
