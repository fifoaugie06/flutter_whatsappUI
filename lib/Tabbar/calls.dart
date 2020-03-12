import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List send = [
    "Fachri IT",
    "Naufal IT",
    "Neta SMA",
    "Kiki",
    "Aisah IT",
    "Teguh IT",
    "Kiki",
    "Fachri IT"
  ];
  List message = [
    "Yesterday, 19:49",
    "Yesterday, 12:13",
    "Yesterday, 10:07",
    "Yesterday, 08:25",
    "9 March, 22:26",
    "9 March, 10:50",
    "5 March, 21:21",
    "1 March, 20.45"
  ];
  List time = [
    "19.19",
    "04.01",
    "23.59",
    "01.01",
    "10.29",
    "07.03",
    "05.00",
    "09.00"
  ];
  List<Icon> icon = [
    Icon(Icons.call, color: Color(0xff075e54)),
    Icon(Icons.call, color: Color(0xff075e54)),
    Icon(Icons.videocam, color: Color(0xff075e54)),
    Icon(Icons.videocam, color: Color(0xff075e54)),
    Icon(Icons.call, color: Color(0xff075e54)),
    Icon(Icons.call, color: Color(0xff075e54)),
    Icon(Icons.call, color: Color(0xff075e54)),
    Icon(Icons.call, color: Color(0xff075e54))
  ];
  List<Icon> answer = [
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.green,
    ),
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.red,
    ),
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.green,
    ),
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.red,
    ),
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.red,
    ),
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.green,
    ),
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.green,
    ),
    Icon(
      Icons.call_received,
      size: 17,
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: send.length,
        padding: EdgeInsets.only(left: 4, right: 4),
        itemBuilder: (context, i) {
          return Row(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 6, top: 12),
                        height: 60,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 57,
                              height: 57,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff075e54),
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'assets/images/augie.jpg')),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 8, top: 4, bottom: 4, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        send[i],
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          answer[i],
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            message[i],
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 66, top: 7),
                      color: Colors.grey[200],
                      width: double.infinity,
                      height: 1,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 12, right: 6),
                      height: 60,
                      child: icon[i],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8, top: 7),
                      color: Colors.grey[300],
                      width: double.infinity,
                      height: 1,
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_call),
        backgroundColor: Color(0xff25d366),
      ),
    );
  }
}
