import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  ItemListView({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];
        return ListTile(
          leading: Icon(item['icon']),
          title: Text(item['name']),
          subtitle: Text('Price: \$${item['price']}'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print('${item['name']} tapped.');
          },
        );
      },
    );
  }
}
