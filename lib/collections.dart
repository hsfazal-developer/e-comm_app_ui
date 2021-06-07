import 'package:flutter/material.dart';

class Collections extends StatefulWidget {
  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ecom App UI",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 2,
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              Container(
                //width: 320,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Search ....',
                    prefixIcon: Icon(Icons.search_outlined),
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                ),
              ),
              listTileWidget(1, "Success"),
              listTileWidget(2, "Motivation"),
              listTileWidget(3, "Hard Work"),
              listTileWidget(4, "Decision"),
              listTileWidget(5, "Confidence"),
              listTileWidget(6, "Business"),
              listTileWidget(7, "Team Work"),
              listTileWidget(6, "Business"),
              listTileWidget(7, "Team Work"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listTileWidget(int img_no, String title_name) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/images/img$img_no.jpg'),
      radius: 25,
    ),
    title: Text(
      title_name,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(width: 10.0),
        Text('5.0'),
        SizedBox(width: 10.0),
        Text('(25 Reviews)'),
        SizedBox(width: 10.0),
      ],
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Text("\$10"),
    ),
  );
}
