import 'package:flutter/material.dart';
import 'package:skl_pertama/pages/chatPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Menambahkan rute untuk halaman chatPage
      routes: {
        '/': (context) => MessageListPage(),
        'chatPage': (context) => ChatPage(),
      },
    );
  }
}

class MessageListPage extends StatelessWidget {
  final List<Map<String, dynamic>> _conversations = [
    {
      "name": "Ibu Customer",
      "lastMessage": "Tentu, jangan ragu untuk bertanya.",
      "time": "10:02 AM",
      "unreadCount": 2,
    },
    {
      "name": "Kak Seller",
      "lastMessage": "Pulsa Anda telah dikirim.",
      "time": "Yesterday",
      "unreadCount": 0,
    },
    {
      "name": "Mantan CEO",
      "lastMessage": "Terima kasih atas pembelian pulsa Anda!",
      "time": "2 days ago",
      "unreadCount": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SMS", selectionColor: Colors.white,),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: _conversations.length,
        itemBuilder: (context, index) {
          return _buildConversationItem(_conversations[index], context);
        },
      ),
    );
  }

  Widget _buildConversationItem(
      Map<String, dynamic> conversation, BuildContext parentContext) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(
          conversation["name"][0],
          style: TextStyle(color: Colors.white),
        ),
      ),
      title: Text(
        conversation["name"],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        conversation["lastMessage"],
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(conversation["time"]),
          if (conversation["unreadCount"] > 0)
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "${conversation['unreadCount']}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
        ],
      ),
      onTap: () {
        Navigator.pushNamed(parentContext, "chatPage");
      },
    );
  }
}