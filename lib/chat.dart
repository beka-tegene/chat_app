import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    _textController.clear();
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

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
        title: const Center(
          child: Text(
            '강남스팟',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            icon:const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('lib/images/Ellipse 23.png'),
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon:const Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    padding:const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _textController,
                            decoration:const InputDecoration(
                              border: InputBorder.none,
                              hintText: "메세지 보내기",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            style:const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          icon:const Icon(
                            Icons.send,
                            color: Colors.amber,
                          ),
                          onPressed: _sendMessage,
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
