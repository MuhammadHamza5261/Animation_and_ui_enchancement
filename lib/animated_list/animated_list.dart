/*

📘 AnimatedList — Kya hota hai?
Jab tum list ke items ko add ya remove karo aur wo smooth animation ke sath appear/disappear hon — to use kehte hain AnimatedList.


✅ Use Kab Aur Kyun Hota Hai?
Situation	Use AnimatedList?
ListView mein static data hai	❌ Nahi
List ke items dynamically add/remove ho rahe hain	✅ Yes
Tumhe custom animation chahiye for insert/delete	✅ Yes
Firebase ya stream-based lists	✅ Yes
Simple scrollable list	❌ Nahi

🧠 Interview Tip:

Jab UI mein item add/remove hone ka visual feedback chahiye — like chat messages, task lists, cart items — tab AnimatedList use hota hai.

🎯 Goal:
Jab FAB dabao, list mein naya item animated tareeke se add ho.
Aur jab kisi item pe tap karo, wo animated tareeke se remove ho.


 */

import 'package:flutter/material.dart';



class AnimatedListExample extends StatefulWidget {
  @override
  _AnimatedListExampleState createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final List<String> _items = [];

  int counter = 1;

  void _addItem() {
    final newItem = 'Item ${counter++}';
    _items.insert(0, newItem); // Add at the top
    _listKey.currentState?.insertItem(0,
        duration: const Duration(milliseconds: 500));
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
          (context, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: ListTile(
            title: Text(
              removedItem,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedList Example')),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
              title: Text(_items[index]),
              onTap: () => _removeItem(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
