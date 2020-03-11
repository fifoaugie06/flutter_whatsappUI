import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Tabbar/calls.dart';
import 'package:flutter_whatsapp/Tabbar/chats.dart';
import 'package:flutter_whatsapp/Tabbar/status.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text('WhatsApp'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(width : 16),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
          ],
          bottom: TabBar(
            controller: controller,
            indicatorColor: Color(0xffece5dd),
            tabs: <Tab>[
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS',),
              Tab(text: 'CALLS',),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Chats(),
            Status(),
            Calls()
          ],
        ),
      ),
    );
  }
}