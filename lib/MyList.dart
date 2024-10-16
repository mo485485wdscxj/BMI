import 'package:flutter/material.dart';

class Mylist extends StatelessWidget {
  Mylist({super.key});

  final List<Map<String, dynamic>> items = [
    {
      'name': 'Momen',
      'icon': Icons.person,
      'image': 'https://images.pexels.com/photos/863988/pexels-photo-863988.jpeg?auto=compress&cs=tinysrgb&w=600',
    },
    {
      'name': 'Mahmoud',
      'icon': Icons.person,
      'image': 'https://images.pexels.com/photos/2156311/pexels-photo-2156311.jpeg?auto=compress&cs=tinysrgb&w=600',
    },
    {
      'name': 'Ahmed',
      'icon': Icons.person,
      'image': 'https://images.pexels.com/photos/863988/pexels-photo-863988.jpeg?auto=compress&cs=tinysrgb&w=600',
    },
    {
      'name': 'Sayed',
      'icon': Icons.person,
      'image': 'https://images.pexels.com/photos/2156311/pexels-photo-2156311.jpeg?auto=compress&cs=tinysrgb&w=600',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.facebook_rounded, size: 40, color: Colors.blue),
        title: Text("Facebook"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
        backgroundColor: Colors.white70,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(items[index]['image']),
            ),
            title: Text(items[index]['name']),
            trailing: Icon(items[index]['icon']),
          );
        },
      ),
    );
  }
}
