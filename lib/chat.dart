import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.white,
        ),
        title: const Text(
          '강남스팟',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'title',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'subtitle',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar:const  BottomAppBar(
        color: Colors.white30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.amber,
              ),
              onPressed: null,
              iconSize: 30,
            ),
             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  fillColor:  Color.fromRGBO(238, 238, 238, 1),
                  filled: true,
                  hintText: "메세지 보내기",
                  hintStyle:  TextStyle(
                    color: Colors.grey,
                  ),
                  // 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
