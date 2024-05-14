import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Widget> _listItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Numbers'),
      ),
      body: ListView(
        children: _listItems,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _generateListItems(10000);
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void _generateListItems(int itemCount) {
    List<Widget> items = [];
    for (int index = 0; index < itemCount; index++) {
      items.add(
        ListTile(
          title: Text('Item ${index + 1}'),
        ),
      );
    }

    setState(() {
      _listItems = items;
    });
  }
}
