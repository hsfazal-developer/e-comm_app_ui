import 'package:flutter/material.dart';

class ListViewHomePage extends StatefulWidget {
  @override
  _ListViewHomePageState createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {
  var titleList = [
    "Success",
    "Motivation",
    "Hardwork",
    "Decision",
    "Confidence",
    "Business",
    "Team Work"
  ];
  var descList = [
    "This is a description of success part. This is a description of success part",
    "This is a description of motivation part. This is a description of motivation part",
    "This is a description of hardwork part. This is a description of hardwork part",
    "This is a description of decision part. This is a description of decision part",
    "This is a description of confidence part. This is a description of confidence part",
    "This is a description of business part. This is a description of business part",
    "This is a description of team work part. This is a description of team work part",
  ];
  var imgList = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
    "assets/images/img6.jpg",
    "assets/images/img7.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double responsive_width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecom App UI",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 1,
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imgList
            .length, // we can take any list of length b/c all list length are same
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Expanded(
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(imgList[index]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleList[index],
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: responsive_width,
                            child: Text(
                              descList[index],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey[500],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
