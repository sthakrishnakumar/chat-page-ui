import 'package:chat_page_ui/chatpage/chat_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(
          'Chat Page',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        centerTitle: true,
      ),
      body: const CustomScrollView(
        shrinkWrap: true,
        slivers: [
          ChatPage(),
        ],
      ),
    );
  }
}
