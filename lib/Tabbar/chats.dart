import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List send = ["Augie", "Rizqiyanto",
    "Nenes", "Annan", "INFORMATICS D'18",
    "ASLAB '18", "Pengajian Sore", "Keluarga Cemara"
  ];
  List message = [
    "Halo Gaes apa kabar",
    "Tugas apa kabar ?",
    "Woy tugase garapen",
    "Kamu dimana ?",
    "Cendol Cendol apa yang seger ?",
    "Flutter yukkssss",
    "Jangan Lupa jamaah hari ini",
    "Kunci kos jangan tertinggal"
  ];
  List time = ["19.19", "04.01", "23.59", "01.01", "10.29", "07.03", "05.00", "09.00"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: send.length,
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
                            width: 53,
                            height: 53,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff075e54),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 8, top: 4, bottom: 4, right: 8),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(
                                      message[i],
                                      style: TextStyle(
                                        color: Colors.grey
                                      ),
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
                    color: Colors.grey[300],
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

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          time[i],
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(height: 6,),
                        Icon(Icons.cancel, color: Colors.grey,),
                      ],
                    ),
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
    );
  }
}
