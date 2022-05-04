import 'package:flutter/material.dart';

import '../widgets/message.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff2b2d2f),
        title: Text("Messages"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 20),
        child: Column(
          children: [
            MessageWidget(),
          ],
        ),
      ),
    );
  }
}
