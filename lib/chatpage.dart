import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  List<String> _items = [
    'chats 1',
    'chats 2',
    'chats 3',
    'chats 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          Icon(Icons.person),
        ],
        title: Text(
          "Chat",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: AnimatedList(
        key: _key,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return _buildItem(_items[index],animation, index);
        },
      ),
    );
  }

  Widget _buildItem(String item, Animation animation, int index) {
    return Card(
        elevation: 2,
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('haloo...'),
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
      ),
    );
  }
}
