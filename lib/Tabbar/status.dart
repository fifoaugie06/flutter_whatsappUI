import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List status = [
    "Listview 1",
    "Listview 2",
    "Listview 3",
    "Listview 4",
    "Listview 5",
    "Listview 6",
    "Listview 7",
    "Listview 8"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 8, right: 8),
              width: double.infinity,
              height: 70,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      border: Border.all(
                        width: 2.5,
                        color: Colors.grey[500],
                      ),
                      image: new DecorationImage(
                          image: new AssetImage('assets/images/augie.jpg')),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6),
                          padding: EdgeInsets.only(left: 8),
                          width: double.infinity,
                          height: 70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'My Status',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Yesterday, 21:45',
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.more_horiz,
                        color: Color(0xff075e54),
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 7, left: 8, right: 8),
              width: double.infinity,
              height: 30,
              color: Colors.grey[300],
              child: Text('Recent updates',
                  style: TextStyle(color: Colors.grey[700], fontSize: 14.0)),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      border: Border.all(
                        width: 2.5,
                        color: Color(0xff128c7e),
                      ),
                      image: new DecorationImage(
                          image: new AssetImage('assets/images/augie.jpg')),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      margin: EdgeInsets.only(left: 6),
                      padding: EdgeInsets.only(left: 8),
                      width: 100,
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Rizqiyanto',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '6 minutes ago',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      border: Border.all(
                        width: 2.5,
                        color: Color(0xff128c7e),
                      ),
                      image: new DecorationImage(
                          image: new AssetImage('assets/images/augie.jpg')),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      margin: EdgeInsets.only(left: 6),
                      padding: EdgeInsets.only(left: 8),
                      width: 100,
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Augie',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '7 minutes ago',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 7, left: 8, right: 8),
              width: double.infinity,
              height: 30,
              color: Colors.grey[300],
              child: Text('Viewed updates',
                  style: TextStyle(color: Colors.grey[700], fontSize: 14.0)),
            ),
            Container(
              width: double.infinity,
              height: status.length * 70.0,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: status.length,
                itemBuilder: (context, i) {
                  return Row(
                    children: <Widget>[
                      Expanded(
                        flex: 10,
                        child: Container(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          height: 70,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    width: 2.5,
                                    color: Colors.grey[500],
                                  ),
                                  image: new DecorationImage(
                                      image: new AssetImage(
                                          'assets/images/augie.jpg')),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Container(
                                  margin: EdgeInsets.only(left: 6),
                                  padding: EdgeInsets.only(left: 8),
                                  width: 100,
                                  height: 70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        status[i],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        status[i] + ' ago',
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.only(bottom: 10),
              child: FittedBox(
                child: FloatingActionButton(
                  child: Icon(
                    Icons.brush,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.grey[100],
                ),
              ),
            ),
            FloatingActionButton(
              child: Icon(Icons.camera_alt),
              backgroundColor: Color(0xff25d366),
            ),
          ],
        ),
      ),
    );
  }
}
